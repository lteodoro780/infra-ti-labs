#!/usr/bin/env bash
set -euo pipefail

NETWORK="${1:-192.168.100}"

echo "Ping sweep em ${NETWORK}.0/24"
echo "Uso: ./ping-sweep.example.sh 192.168.100"

for i in $(seq 1 254); do
  (
    if ping -c 1 -W 1 "${NETWORK}.${i}" >/dev/null 2>&1; then
      echo "${NETWORK}.${i} ativo"
    fi
  ) &
done

wait
