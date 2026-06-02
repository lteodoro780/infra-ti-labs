# Comandos úteis Linux

## Sistema

```bash
uname -a
lsb_release -a
hostnamectl
uptime
free -h
df -h
```

## Rede

```bash
ip a
ip route
ss -tulpn
ping 8.8.8.8
traceroute 8.8.8.8
```

## Serviços

```bash
systemctl status nome-do-servico
systemctl restart nome-do-servico
journalctl -u nome-do-servico -f
```

## Logs

```bash
tail -f /var/log/syslog
tail -f /var/log/auth.log
journalctl -xe
```
