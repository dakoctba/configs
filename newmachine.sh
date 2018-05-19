echo "------------------------------"
echo "Instalação de uma nova máquina Linux"
echo "------------------------------"

#
# Para descobrir erros em uma instalacao: sudo dpkg --configure -a
#

#
# Atualizacao do sistema
#
sudo apt-get update
sudo apt-get upgrade

#
# Bibliotecas e dependencias basicas
#
sudo apt-get install curl git-core nginx xz-utils libcurl3 -y

#
# Cria chave ssh
#
ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""

#
# Configura o git
#
git config --global user.name "Jackson Teixeira"
git config --global user.email "jackson.s.teixeira@gmail.com"
git config --global color.ui true

#
# Java
#
sudo apt-get purge openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y oracle-java8-set-default

#
# Docker
# 
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt-get update
sudo apt-get -y install docker-ce

#
# Adiciona o meu usuario no grupo do Docker
#
sudo usermod -aG docker jackson

#
# Recarrega as configuracoes do novo grupo para a sessao atual
#
newgrp docker

#
# Docker compose
#
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
