# Descoberta de Hosts na Rede

## Ping sweep simples

```bash
for i in $(seq 1 254); do
  ping -c 1 -W 1 192.168.100.$i | grep "64 bytes" &
done
wait
```

## Ping sweep com nmap

```bash
nmap -sn 192.168.100.0/24
```

## Ver portas comuns

```bash
nmap -p 22,80,443,3389,8080 192.168.100.0/24
nmap -sV 192.168.100.10
```

## ARP local

```bash
arp -a
ip neigh
```

## Cuidados

Execute varreduras apenas em redes autorizadas.
