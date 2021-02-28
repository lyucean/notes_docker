FROM php:7.4-cli

# скорпируем файлы в образ
COPY . /usr/src/myapp

# установим рабочую директорию
WORKDIR /usr/src/myapp

# установим временную зону
RUN printf '[PHP]\ndate.timezone = "Europe/Moscow"\n' > /usr/local/etc/php/conf.d/tzone.ini

# запустим наш скрипт
CMD [ "php", "./index.php" ]