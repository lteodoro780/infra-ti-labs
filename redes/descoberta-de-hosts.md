# Descoberta de Hosts

## ARP local

```bash
arp -a
ip neigh
```

## Ping sweep com nmap

```bash
nmap -sn 192.168.100.0/24
```

## Portas comuns

```bash
nmap -p 22,80,443,3389,8080 192.168.100.0/24
```

## Observação

Execute varreduras apenas em redes autorizadas.
