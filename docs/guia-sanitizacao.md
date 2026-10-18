# Guia de sanitização para repositórios públicos

Antes de subir qualquer arquivo para o GitHub, revise:

## Não publicar

- Senhas;
- Tokens de API;
- Arquivos `.env`;
- Backups;
- Dumps SQL;
- Logs completos;
- IPs reais de rede interna;
- Hostnames reais;
- Usuários reais;
- Prints com dados internos;
- Documentos institucionais não públicos.

## Substituições recomendadas

| Real | Exemplo público |
|---|---|
| IP interno | `192.0.2.10` |
| Servidor real | `server01.local` |
| GLPI real | `glpi.example.local` |
| Zabbix real | `zabbix.example.local` |
| Usuário real | `usuario.exemplo` |
| Token real | `troque_este_valor` |

Os endereços de exemplo usam a faixa `192.0.2.0/24`, reservada para documentação pela RFC 5737: ela nunca aparece numa rede real, então não há risco de confundir um exemplo com um endereço interno.

## Comando de revisão

```bash
git grep -n "senha\|password\|token\|secret\|10\.125\|192\.168\|ldap\|serial\|impressora"
```

Nem todo resultado é problema. A ideia é revisar antes de publicar.
