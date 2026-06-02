# OCS Inventory — troubleshooting

## Arquivos comuns

```text
/etc/apache2/conf-enabled/z-ocsinventory-server.conf
/var/log/apache2/error.log
```

## Variáveis importantes

```text
OCS_DB_HOST
OCS_DB_PORT
OCS_DB_NAME
OCS_DB_USER
OCS_DB_PWD
```

## Verificar banco

```bash
mysql -u root -p
SHOW DATABASES;
SELECT User, Host FROM mysql.user;
```

## Verificar Apache

```bash
sudo apachectl configtest
sudo systemctl restart apache2
sudo tail -f /var/log/apache2/error.log
```

## HTTP 500

Possíveis causas:

- credencial errada do banco;
- módulo Perl faltando;
- configuração duplicada;
- permissão incorreta;
- banco ausente;
- usuário sem permissão.

## Cuidados

Não publique senha do banco, dump SQL, logs completos ou nomes reais.
