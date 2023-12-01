#!/bin/bash

source libraries.sh

apache2_install()
apache2_setup()

Repository="devops-static-web"
GitUrl="https://github.com/roxsross/$Repository.git"
clone_repository $Repository $GitUrl

install_web $Repository

