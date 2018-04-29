FROM php:7-fpm-stretch

RUN rm /etc/apt/preferences.d/no-debian-php

RUN apt update && apt upgrade -y

RUN apt install -y \
        vim \
        ca-certificates \
        git \
        curl \
        unzip \
        php7.0 \
        php7.0-common \
        php7.0-xml \
        php7.0-zip \
        php7.0-xmlreader \
        php7.0-opcache \
        php7.0-mcrypt \
        php7.0-curl \
        php7.0-json \
        php7.0-dom \
        php7.0-phar \
        php7.0-mbstring \
        php7.0-pdo \
        php7.0-simplexml \
        php7.0-tokenizer \
        php7.0-xmlwriter

RUN  docker-php-ext-install pdo_mysql \
     && docker-php-ext-enable pdo_mysql

RUN apt install -y php-pear

RUN apt install -y php-xdebug
#     && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php \
      && mv composer.phar /usr/local/bin/ \
      && ln -s  /usr/local/bin/composer.phar /usr/local/bin/composer

RUN curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony \
      && chmod a+x /usr/local/bin/symfony

###BEGIN block for symfony dependencies

RUN apt install -y git \
    && git config --global user.name "Alexandru Bucur" \
    && git config --global user.email "aleks.bucur27@gmail.com"

RUN pear channel-discover pear.pdepend.org \
    && pear channel-discover pear.phpmd.org \
    && pear channel-discover pear.phpdoc.org \
    && pear channel-discover pear.symfony-project.com

RUN pear install pdepend/PHP_Depend \
    && pear install phpmd/PHP_PMD \
    && pear install phpdoc/phpDocumentor-alpha \
    && pear install PHP_CodeSniffer

RUN curl -sS https://phar.phpunit.de/phpcpd.phar -o /usr/local/bin/phpcpd \
    && chmod +x /usr/local/bin/phpcpd

RUN curl -sS https://phar.phpunit.de/phploc.phar -o /usr/local/bin/phploc \
    && chmod +x /usr/local/bin/phploc

RUN curl -sS https://github.com/mayflower/PHP_CodeBrowser/releases/download/1.1.4/phpcb-1.1.4.phar \
        -o /usr/local/bin/phpcb \
    && chmod +x /usr/local/bin/phpcb

WORKDIR /usr/local/lib/php/PHP/CodeSniffer/src/Standards

RUN git clone git://github.com/escapestudios/Symfony2-coding-standard.git Symfony2 \
    && phpcs --config-set default_standard Symfony2

RUN mkdir -p /usr/share/man/man1

RUN apt install -y default-jre

RUN apt install -y firefox-esr

###END block for symfony dependencies

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    mkdir -p /etc/sudoers.d && \
    touch /etc/sudoers.d/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

WORKDIR /var/www/mava

USER developer

ENV PATH="~/.composer/vendor/bin:./vendor/bin:${PATH}"
