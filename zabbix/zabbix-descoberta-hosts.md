# Zabbix — descoberta e listagem de hosts

## Objetivo

Usar a API do Zabbix para listar hosts, grupos e problemas.

## Fluxo recomendado

1. Buscar o grupo:

```text
hostgroup.get
```

2. Obter o `groupid`.

3. Listar hosts do grupo:

```text
host.get com groupids
```

4. Consultar problemas:

```text
problem.get
```

## Problemas comuns

### API retorna 422 em uma API intermediária

Se uma API própria retorna `422 Unprocessable Entity`, normalmente o payload ou parâmetro esperado está diferente.

Exemplo:

```text
Campo esperado: ticket_id
Campo enviado: chamado_id
```

## Correção

Alinhar nomes dos campos no backend e no cliente.
