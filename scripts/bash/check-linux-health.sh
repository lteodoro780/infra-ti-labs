#!/usr/bin/env bash
set -euo pipefail

echo "== Sistema =="
hostnamectl || true
uptime

echo "== Disco =="
df -h

echo "== Memória =="
free -h

echo "== Rede =="
ip a | sed -n '1,120p'

echo "== Serviços críticos exemplo =="
for service in ssh docker apache2; do
  systemctl is-active "$service" >/dev/null 2>&1 && echo "$service: ativo" || echo "$service: inativo ou inexistente"
done
