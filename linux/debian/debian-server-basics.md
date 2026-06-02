# Checklist básico de servidor Debian

## Atualizar sistema

```bash
sudo apt update
sudo apt upgrade -y
```

## Instalar ferramentas úteis

```bash
sudo apt install -y curl wget vim nano htop net-tools dnsutils traceroute unzip git ufw
```

## Rede

```bash
ip a
ip route
resolvectl status
ping -c 4 8.8.8.8
ping -c 4 example.com
```

## Serviços

```bash
systemctl --type=service --state=running
systemctl status nome-do-servico
journalctl -u nome-do-servico -n 100 --no-pager
```

## Disco

```bash
df -h
lsblk
du -sh /var/log/*
```

## Portas

```bash
ss -tulpn
```

## Logs principais

```bash
journalctl -xe
tail -f /var/log/syslog
tail -f /var/log/auth.log
```
