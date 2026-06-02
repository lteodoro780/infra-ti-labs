# LDAP + GLPI Troubleshooting

Erro comum no GLPI:

```text
AcceptSecurityContext error, data 52e
```

## Significado

O código `52e` geralmente indica credenciais inválidas no bind LDAP.

## Checklist

- Usuário de bind correto.
- Senha correta.
- DN correto.
- Servidor LDAP acessível na porta 389 ou 636.
- Conta não bloqueada ou expirada.
- Filtro de login correto.

## Testar porta

```bash
nc -vz ad.example.local 389
nc -vz ad.example.local 636
```

## Testar bind com ldapsearch

```bash
ldapsearch -x -H ldap://ad.example.local -D "usuario@example.local" -W -b "DC=example,DC=local"
```

## Segurança

Não publicar domínio, usuários ou DN reais em repositórios públicos.
