# OCS Inventory - Banco de Dados

## Conferir bancos

```bash
sudo mysql -e "SHOW DATABASES;"
```

## Conferir usuários

```bash
sudo mysql -e "SELECT user, host FROM mysql.user;"
```

## Arquivo comum de configuração

```text
/etc/apache2/conf-enabled/z-ocsinventory-server.conf
```

Campos comuns:

```text
OCS_DB_HOST
OCS_DB_PORT
OCS_DB_NAME
OCS_DB_USER
OCS_DB_PWD
```

Não publique senhas reais.
