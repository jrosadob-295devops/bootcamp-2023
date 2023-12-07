#!/bin/bash

echo "deploy ..."
source libraries.sh

echo "1. Verificando si es sudo ..."
is_sudo

echo "2. Instalando Apache ..."
apache2_install

echo "3. Activando Apache ..."
apache2_setup

echo "4. Clonando repositorio ..."
Repository="devops-static-web"
GitUrl="https://github.com/roxsross/$Repository.git"
clone_repository $Repository $GitUrl

echo "5. Instalando web ..."
install_web $Repository

echo "Script end ..."