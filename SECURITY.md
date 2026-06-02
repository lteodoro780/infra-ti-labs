# Segurança

Este repositório é público e deve conter apenas exemplos fictícios ou sanitizados.

## Não publicar

- IPs reais de redes internas
- Hostnames reais
- Usuários, senhas e tokens
- Arquivos `.env`
- Backups, dumps SQL e logs brutos
- Prints de sistemas internos
- Dados de pessoas, setores ou chamados reais

## Como sanitizar exemplos

Use valores genéricos:

```text
server01.local
192.168.100.10
glpi.example.local
zabbix.example.local
usuario.exemplo
```

## Em caso de vazamento

1. Remova o arquivo imediatamente.
2. Revogue tokens e senhas expostos.
3. Force um novo commit sem dados sensíveis.
4. Considere limpar o histórico com ferramenta adequada, se necessário.
