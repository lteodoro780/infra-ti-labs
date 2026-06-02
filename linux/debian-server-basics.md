# Debian Server Basics

Checklist inicial para servidor Debian.

## Atualizar sistema

```bash
sudo apt update
sudo apt upgrade -y
```

## Instalar ferramentas úteis

```bash
sudo apt install -y curl wget git vim htop net-tools dnsutils traceroute unzip
```

## Configurar hostname

```bash
sudo hostnamectl set-hostname server01
```

## Verificar IP

```bash
ip a
ip route
```

## Firewall básico com UFW

```bash
sudo apt install -y ufw
sudo ufw allow ssh
sudo ufw enable
sudo ufw status
```
