# Diagnóstico de Switches

## Checklist inicial

- Testar ping no gateway.
- Verificar IP, máscara e rota.
- Conferir VLAN da porta.
- Validar cabo e link físico.
- Conferir tabela ARP.
- Verificar se o switch responde via HTTP/HTTPS/SSH/Telnet/SNMP.

## Comandos úteis

```bash
ping 192.168.100.1
arp -a
nmap -p 22,23,80,443,161 192.168.100.0/24
traceroute 192.168.100.10
```
