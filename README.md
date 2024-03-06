# SSHD

Docker container for development purposes with pre-installed:

- Docker CLI
- oh-my-zsh
- git
- openssh-server

## Quick-start

### Pull from Docker Hub

Set the allowed public key(s) by:

- Mounting the file `authorized_keys`
- ... or setting up the environment variable `PUBLIC_KEY`

Run the container

```bash
docker compose -f docker-hub-compose.yml up
ssh dev@localhost:2222 -i ~/.ssh/<YOUR_PRIVATE_KEY>
```
