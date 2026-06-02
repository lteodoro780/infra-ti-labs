# Troubleshooting de SSH no Linux

## Sintomas comuns

- `Permission denied`;
- senha funciona localmente, mas não via SSH;
- usuário root acessa console, mas não conecta via rede;
- serviço SSH não responde;
- porta 22 fechada.

## Verificar serviço

```bash
sudo systemctl status ssh
sudo systemctl status sshd
```

Em Debian/Ubuntu, normalmente o serviço é `ssh`.

## Instalar ou reinstalar OpenSSH Server

```bash
sudo apt update
sudo apt install --reinstall openssh-server -y
sudo systemctl enable ssh
sudo systemctl restart ssh
```

## Verificar porta

```bash
ss -tulpn | grep :22
```

## Testar conexão com debug

```bash
ssh -v usuario@192.168.100.10
```

## Verificar configuração

```bash
sudo nano /etc/ssh/sshd_config
```

Pontos comuns:

```text
PasswordAuthentication yes
PermitRootLogin no
```

Depois:

```bash
sudo systemctl restart ssh
```

## Firewall

```bash
sudo ufw status
sudo ufw allow ssh
```

## Logs

```bash
sudo journalctl -u ssh -n 100 --no-pager
sudo tail -f /var/log/auth.log
```

## Observação

Evite liberar login root por SSH. Use usuário comum com `sudo`.
