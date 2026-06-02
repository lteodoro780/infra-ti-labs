#!/usr/bin/env bash
set -euo pipefail

echo "Adicionando usuário atual ao grupo docker..."
sudo usermod -aG docker "$USER"

echo "Aplicando grupo na sessão atual..."
newgrp docker <<EOF
docker ps
EOF

echo "Se ainda falhar, faça logout/login ou reinicie a sessão."
