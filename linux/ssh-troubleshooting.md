# SSH Troubleshooting

Checklist para diagnosticar problemas de acesso SSH em servidores Linux.

## 1. Verificar se o serviço está instalado

```bash
which sshd
sshd -V
```

## 2. Verificar status do serviço

```bash
sudo systemctl status ssh
sudo systemctl status sshd
```

Em Debian/Ubuntu normalmente o serviço é `ssh`.

## 3. Verificar porta aberta

```bash
sudo ss -tulpn | grep :22
```

## 4. Testar conexão com debug

```bash
ssh -v usuario@192.168.100.10
```

## 5. Ver logs

Debian/Ubuntu:

```bash
sudo tail -f /var/log/auth.log
```

RHEL/CentOS/Rocky:

```bash
sudo tail -f /var/log/secure
```

## 6. Conferir configuração

```bash
sudo nano /etc/ssh/sshd_config
```

Pontos comuns:

```text
PermitRootLogin no
PasswordAuthentication yes
PubkeyAuthentication yes
Port 22
```

## 7. Reiniciar serviço

```bash
sudo systemctl restart ssh
```

## 8. Problemas comuns

| Sintoma | Possível causa |
|---|---|
| Connection refused | Serviço parado ou porta fechada |
| Permission denied | Senha errada, usuário errado ou autenticação bloqueada |
| Timeout | Firewall, rota ou servidor inacessível |
| No route to host | Problema de rede ou gateway |
