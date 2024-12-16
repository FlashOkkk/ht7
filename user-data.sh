#!/bin/bash

# Оновлення системи
sudo apt update -y && sudo apt upgrade -y

# Налаштування GatewayPorts
sudo sed -i 's/#GatewayPorts no/GatewayPorts yes/' /etc/ssh/sshd_config

# Перезапуск SSH-сервісу
sudo systemctl restart ssh
