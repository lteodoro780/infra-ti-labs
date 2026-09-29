# Buscar e Descobrir Hosts no Zabbix

## Objetivo

Usar a API do Zabbix para listar hosts, grupos e problemas.

## Exemplo sanitizado de host.get

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

## Fluxo recomendado

1. Buscar o grupo com `hostgroup.get`.
2. Obter o `groupid` retornado.
3. Listar hosts do grupo com `host.get` usando `groupids`.
4. Consultar problemas ativos com `problem.get`.

## Problemas comuns

### API intermediária retorna 422 (Unprocessable Entity)

Se uma API própria (não o Zabbix diretamente) retorna `422`, normalmente o payload ou o nome de um parâmetro esperado está diferente do enviado.

Exemplo:

```text
Campo esperado: ticket_id
Campo enviado: chamado_id
```

**Correção:** alinhar os nomes dos campos entre backend e cliente.
