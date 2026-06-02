#!/usr/bin/env bash
set -euo pipefail

echo "=== Hostname ==="
hostname

echo
echo "=== Sistema ==="
cat /etc/os-release || true

echo
echo "=== IPs ==="
ip -br a || true

echo
echo "=== Rotas ==="
ip route || true

echo
echo "=== DNS ==="
resolvectl status 2>/dev/null || cat /etc/resolv.conf

echo
echo "=== Disco ==="
df -h

echo
echo "=== Serviços com falha ==="
systemctl --failed || true

echo
echo "=== Portas abertas ==="
ss -tulpn || true
