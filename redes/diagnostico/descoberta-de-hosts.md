# Descoberta de hosts na rede

## Ping sweep simples

```bash
for i in $(seq 1 254); do
  ping -c 1 -W 1 192.168.100.$i | grep "64 bytes" &
done
wait
```

## Nmap

```bash
nmap -sn 192.168.100.0/24
```

## Ver portas comuns

```bash
nmap -sV 192.168.100.10
```

## ARP

```bash
arp -a
ip neigh
```

## Cuidados

Faça varreduras apenas em redes autorizadas.
