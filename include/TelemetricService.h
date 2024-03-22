//
// Created by Aruncutean on 21/03/2024.
//

#ifndef TELEMETRIC_H
#define TELEMETRIC_H

#include <iostream>
#include <thread>
#include <netinet/in.h>
#include <unistd.h>
#include <cstring>
#include <sys/socket.h>
#include "<nlohmann/json.hpp>"

class TelemetricService {

public:
    TelemetricService() : addrlen(sizeof(address)), isActive(false) {
        address.sin_family = AF_INET;
        address.sin_addr.s_addr = INADDR_ANY;
        address.sin_port = htons(12345);
    }

    ~TelemetricService() {
        stop();
    }

    void start() {
        isActive = true;
        serverThread = std::thread(&TelemetricService::run, this);
    }

    void stop() {
        if (isActive) {
            isActive = false;
            shutdown(server_fd, SHUT_RDWR); // Acesta va declanșa o ieșire din accept pe threadul serverului
            serverThread.join(); // Așteaptă finalizarea threadului
        }
    }

    void run() {
        if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0) {
            perror("socket failed");
            exit(EXIT_FAILURE);
        }


        if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt, sizeof(opt))) {
            perror("setsockopt");
            exit(EXIT_FAILURE);
        }

        // Legarea și ascultarea
        if (bind(server_fd, (struct sockaddr *) &address, sizeof(address)) < 0) {
            perror("bind failed");
            exit(EXIT_FAILURE);
        }


        while (isActive) {
            if (listen(server_fd, 3) < 0) {
                perror("listen");
                exit(EXIT_FAILURE);
            }
            std::cout << "Server is listening on port 12345" << std::endl;
            if ((new_socket = accept(server_fd, (struct sockaddr *) &address, (socklen_t *) &addrlen)) < 0) {
                perror("accept");
                if (!isActive) break;
            } else {
                std::cout << "Client Connected" << std::endl;
                while(true) {
                    memset(buffer, 0, 1024);
                    int valread = read(new_socket, buffer, 1024);
                    if(valread <= 0) {
                        break;
                    }
                    std::cout << "Received: " << buffer << std::endl;
                }
            }
            close(new_socket);
        }
        close(server_fd);
    }

    bool serverConnect() {
        if ((new_socket = accept(server_fd, (struct sockaddr *) &address, (socklen_t *) &addrlen)) < 0) {
            return false;
        } else {
            return true;
        }
        return false;
    }


private:
    int server_fd, new_socket;
    struct sockaddr_in address;
    int addrlen;
    bool isActive;
    std::thread serverThread;
    int opt = 1;
    char buffer[1024] = {0};
};


#endif
