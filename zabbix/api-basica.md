# Zabbix API Básica

Endpoint exemplo:

```text
https://zabbix.example.local/api_jsonrpc.php
```

## Consultar versão

```bash
curl -s -X POST https://zabbix.example.local/api_jsonrpc.php \
  -H 'Content-Type: application/json' \
  -d '{
    "jsonrpc": "2.0",
    "method": "apiinfo.version",
    "params": {},
    "id": 1
  }'
```

## Segurança

Nunca publique tokens reais da API.
