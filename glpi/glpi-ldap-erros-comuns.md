# GLPI LDAP — erros comuns

## `data 52e`

Credencial inválida no Active Directory.

## Verificar

- Login de bind;
- Senha;
- Base DN;
- Filtro de login;
- Porta 389 ou 636;
- Certificado, se usar LDAPS;
- Permissão da conta.

## Logs

```bash
cd /var/www/html/glpi/files/_log
tail -f php-errors.log
```

## Dica

Quando o teste de conexão funciona, mas o login não, normalmente o problema está em:
- filtro de login;
- atributo usado para autenticação;
- grupos/perfis no GLPI;
- conta sem permissão ou fora da OU esperada.
