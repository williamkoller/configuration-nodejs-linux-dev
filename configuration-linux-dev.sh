# install curl 
apt install curl -y

# install nvm 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh

# install nodejs
nvm install 14.17.5

# add nodejs default
# nvm use node

# install docker
apt update
apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt install docker-ce

# add commends docker without sudo
# usermod -aG docker ${USER}
# su - ${USER}
# id -nG

# install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose


# install docker-machine
base=https://github.com/docker/machine/releases/download/v0.16.0 \
  && curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine \
  &&  mv /tmp/docker-machine /usr/local/bin/docker-machine \
  && chmod +x /usr/local/bin/docker-machine


# install dbeaver-ce
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key |  apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" |  tee /etc/apt/sources.list.d/dbeaver.list
sudo apt-get update &&  apt-get install dbeaver-ce

# install vscode
sudo snap install --classic code

# install postman
sudo snap install postman

  
