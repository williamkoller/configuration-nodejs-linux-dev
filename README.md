# Development Setup for Node.js Environment on Linux or WSL2

### Running Commands on Linux or WSL2

```bash
sudo chmod +x setup.sh
sudo ./setup.sh
```

### After Execution for Docker Permissions

```bash
usermod -aG docker ${USER}
su - ${USER}
id -nG
```

This script includes installations of:

- curl
- docker
- docker-compose
- dbeaver-ce
- insomnia
- vscode
- nvm
- Node.js
