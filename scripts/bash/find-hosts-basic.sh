#!/usr/bin/env bash
set -euo pipefail

NETWORK="${1:-192.168.100.0/24}"

echo "Varredura ping em: $NETWORK"
echo "Use apenas em redes autorizadas."

if command -v nmap >/dev/null 2>&1; then
  nmap -sn "$NETWORK"
else
  echo "nmap não instalado. Instale com: sudo apt install nmap"
  exit 1
fi
