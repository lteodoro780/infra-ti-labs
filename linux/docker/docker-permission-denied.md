# Docker permission denied no Linux

## Sintoma

```text
permission denied while trying to connect to the Docker daemon socket
```

## Causa

O usuário atual não pertence ao grupo `docker`.

## Correção

```bash
sudo usermod -aG docker $USER
newgrp docker
docker ps
```

Se não funcionar, faça logout/login ou reinicie a sessão.

## Verificar socket

```bash
ls -l /var/run/docker.sock
```

## Verificar serviço

```bash
sudo systemctl status docker
sudo systemctl enable docker
sudo systemctl restart docker
```

## Observação de segurança

Usuários no grupo `docker` possuem privilégios equivalentes a root em muitos cenários. Use com cuidado.
