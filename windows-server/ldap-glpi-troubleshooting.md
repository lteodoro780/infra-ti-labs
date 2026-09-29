# GLPI com LDAP/Active Directory — Troubleshooting

Erro comum no GLPI:

```text
AcceptSecurityContext error, data 52e
```

## Significado

O código `52e` normalmente indica credenciais inválidas no bind LDAP.

## Checklist de verificação

- Usuário de bind está correto?
- Senha está correta?
- Domínio/DN está correto?
- Conta está bloqueada ou expirada?
- Servidor LDAP acessível na porta 389 ou 636?
- Filtro de login e usuário usado pelo GLPI estão corretos?

## Testes de rede

No servidor GLPI:

```bash
nc -vz ad.example.local 389
nc -vz ad.example.local 636
```

## Testar bind com ldapsearch

```bash
ldapsearch -x -H ldap://ad.example.local -D "usuario@example.local" -W -b "DC=example,DC=local"
```

## Logs do GLPI

```bash
cd /var/www/html/glpi/files/_log
tail -f php-errors.log
```

## Segurança

Não publique em repositórios públicos:
- usuário de bind real;
- senha;
- DN interno;
- domínio real;
- IP do controlador de domínio.
