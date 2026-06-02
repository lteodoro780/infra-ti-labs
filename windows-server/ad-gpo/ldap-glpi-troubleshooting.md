# GLPI com LDAP/Active Directory — troubleshooting

## Erro comum

```text
AcceptSecurityContext error, data 52e
```

## Significado

O código `52e` normalmente indica credenciais inválidas no bind LDAP.

## Verificações

- Usuário de bind está correto?
- Senha está correta?
- Domínio está correto?
- Conta está bloqueada?
- DN/base DN está correto?
- Porta 389/636 responde?
- O GLPI está usando o usuário certo?

## Testes de rede

No servidor GLPI:

```bash
nc -vz ad.example.local 389
nc -vz ad.example.local 636
```

## Logs do GLPI

```bash
cd /var/www/html/glpi/files/_log
tail -f php-errors.log
```

## Cuidados

Não publique:
- usuário de bind real;
- senha;
- DN interno;
- domínio real;
- IP do controlador de domínio.
