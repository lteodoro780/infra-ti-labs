# Buscar hosts no Zabbix

Exemplo sanitizado de chamada `host.get`.

```json
{
  "jsonrpc": "2.0",
  "method": "host.get",
  "params": {
    "output": ["hostid", "host", "name"],
    "selectInterfaces": ["ip", "dns", "port"],
    "search": {
      "name": "switch"
    }
  },
  "auth": "TOKEN_EXEMPLO",
  "id": 1
}
```
