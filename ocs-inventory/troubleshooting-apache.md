# OCS Inventory - Troubleshooting Apache

## Ver logs

```bash
sudo tail -f /var/log/apache2/error.log
```

## Conferir módulos Perl

```bash
apache2ctl -M | grep perl
```

## Reiniciar Apache

```bash
sudo systemctl restart apache2
sudo systemctl status apache2
```
