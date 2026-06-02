# Zabbix API — conceitos básicos

## Endpoint

```text
https://zabbix.example.local/api_jsonrpc.php
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

## Cuidados

Não publique token, URL real ou nomes reais de hosts.
