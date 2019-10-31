#!/bin/bash

function bootstrap {
    sudo apt-get update
    packages=(
        s3cmd
        python-pip
        git
        sysstat
        libmysqlclient-dev
        maven
        python-dev
        libsqlite3-dev
        libxslt1-dev
        libxml2-dev
        libevent-dev
        nodejs
        make
        build-essential
    )

    sudo apt-get install -y ${packages[@]}

    sudo sed -i 's/^ENABLED=.*/ENABLED="true"/g' /etc/default/sysstat
}

function provision {
    bootstrap
}

provision

