#!/bin/bash
sudo add-apt-repository ppa:ondrej/php -y
setup php7.3 \
      php7.3-cli \
      php7.3-common \
      php7.3-curl \
      php7.3-gd \
      php7.3-intl \
      php7.3-json \
      php7.3-mbstring \
      php7.3-mysql \
      php7.3-opcache \
      php7.3-readline \
      php7.3-xml \
      php7.3-zip \
      apache2 \
      libapache2-mod-php7.3


EXPECTED_CHECKSUM="$(wget -q -O - https://composer.github.io/installer.sig)"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_CHECKSUM="$(php -r "echo hash_file('sha384', 'composer-setup.php');")"

if [ "$EXPECTED_CHECKSUM" != "$ACTUAL_CHECKSUM" ]
then
        >&2 echo 'ERROR: Invalid installer checksum'
            rm composer-setup.php
                exit 1
            fi

            sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
            RESULT=$?
            rm composer-setup.php
            exit $RESULT
