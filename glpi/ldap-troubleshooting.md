# GLPI LDAP Troubleshooting

## Erro 52e

```text
AcceptSecurityContext error, data 52e
```

Geralmente indica credenciais inválidas no bind LDAP.

## Checklist

- Conferir usuário de bind.
- Conferir senha.
- Validar se a conta não está bloqueada.
- Testar porta 389/636.
- Revisar BaseDN e filtros.
- Verificar logs do GLPI.

## Logs comuns

```bash
cd /var/www/html/glpi/files/_log
tail -f php-errors.log
```
