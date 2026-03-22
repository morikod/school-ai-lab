#!/bin/bash
echo "[1/3] Настройка сетевого интерфейса..."
sudo ip addr add 192.168.5.1/24 dev wlan0 2>/dev/null
sudo ip link set wlan0 up

echo "[2/3] Запуск Wi-Fi точки доступа и DNS..."
# Мы запускаем их как системные службы (или можно тоже в Docker)
sudo systemctl restart hostapd
sudo systemctl restart dnsmasq

echo "[3/3] Запуск AI Сервисов (Ollama + Portal)..."
sudo docker compose up -d

echo "------------------------------------------------"
echo "ГОТОВО! Студенты могут подключаться к Wi-Fi."
echo "Адрес портала: http://ucitel.skola"
echo "------------------------------------------------"
