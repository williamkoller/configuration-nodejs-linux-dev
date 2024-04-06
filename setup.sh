echo "Install curl" 
sudo apt install curl -y

echo "Install nvm" 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.zshrc

# Reinicie seu terminal ou execute `source ~/.zshrc` para aplicar as alterações no arquivo .zshrc

echo "Install Node.js LTS"
nvm install --lts

echo "Set Node.js LTS as default"
nvm use --lts
nvm alias default node

echo "Install Docker"
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install -y docker-ce

echo "Add user to docker group"
sudo usermod -aG docker ${USER}

echo "Install Docker Compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

echo "Install DBeaver CE"
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
sudo apt-get update && sudo apt-get install -y dbeaver-ce

echo "Install Insomnia"
sudo snap install insomnia

echo "Install VSCode"
curl -o vscode.deb -L https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i vscode.deb
sudo apt-get install -f

echo "Finish installations"
