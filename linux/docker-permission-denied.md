# Docker Permission Denied

Erro comum:

```text
permission denied while trying to connect to the Docker daemon socket
```

## Causa

O usuário atual não pertence ao grupo `docker` ou o serviço Docker não está ativo.

## Correção

```bash
sudo usermod -aG docker $USER
newgrp docker
```

Teste:

```bash
docker ps
```

Se ainda falhar, verifique o serviço:

```bash
sudo systemctl status docker
sudo systemctl restart docker
```

## Observação

Adicionar o usuário ao grupo `docker` concede permissões elevadas. Use apenas em máquinas confiáveis.
