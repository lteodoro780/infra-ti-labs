# Zabbix API — Conceitos Básicos

## Endpoint

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

## Métodos úteis

- `apiinfo.version`
- `host.get`
- `hostgroup.get`
- `trigger.get`
- `problem.get`
- `item.get`
- `history.get`

## Buscar grupos

```json
{
  "jsonrpc": "2.0",
  "method": "hostgroup.get",
  "params": {
    "output": ["groupid", "name"],
    "search": {
      "name": "switch"
    }
  },
  "auth": "TOKEN",
  "id": 1
}
```

## Buscar hosts por grupo

```json
{
  "jsonrpc": "2.0",
  "method": "host.get",
  "params": {
    "output": ["hostid", "host", "name"],
    "groupids": "1"
  },
  "auth": "TOKEN",
  "id": 2
}
```

## Segurança

Nunca publique tokens reais, URL real ou nomes reais de hosts.
