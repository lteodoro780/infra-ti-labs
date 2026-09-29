# GLPI LDAP Troubleshooting

## Erro `data 52e`

```text
AcceptSecurityContext error, data 52e
```

Geralmente indica credenciais inválidas no bind LDAP/Active Directory.

## Checklist

- Usuário de bind está correto?
- Senha está correta?
- Base DN e filtro de login estão corretos?
- Conta está bloqueada ou expirada?
- Porta 389 ou 636 responde?
- Certificado válido, se estiver usando LDAPS?

## Logs

```bash
cd /var/www/html/glpi/files/_log
tail -f php-errors.log
```

## Dica

Quando o teste de conexão funciona mas o login não, o problema normalmente está em:
- filtro de login;
- atributo usado para autenticação;
- grupos/perfis configurados no GLPI;
- conta fora da OU esperada.
