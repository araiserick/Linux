# Обновляем кэш apt-get
sudo apt-get update
# Устанавливаем PHP и Apache
sudo apt-get install -y php apache2
# Копируем код из репозитория
sudo git clone https://github.com/brikis98/php-app.git
/var/www/html/app
# Запускаем Apache
sudo service apache2 start

