#!/bin/bash

package_exist() {
  if dpkg -l | grep -q $1 ;
    then
        return 1
    else
        return 0
    fi
}

package_install() {
    apt install -y $1 $2 $3 $4 $5 $6 $7 $8 $9
}

apache2_install() {
    package_exist $Apache
    if [ $? -eq 1 ]
    then
        echo "$PACKAGE ya está instalado"
    else
        echo "Instalando $PACKAGE"
        package_install $Apache
    fi
}

apache2_setup() {
    systemctl enable apache2
    systemctl start apache2
}

clone_repository() {
    if [ -d "$1" ];
    then
        echo "Repositorio ya existe."
        git pull
    else
        git clone -b devops-mariobros $2
    if
}

install_web() {
    cp -r $1/* /var/www/html
}