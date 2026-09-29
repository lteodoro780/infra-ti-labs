# Subnetting IPv4

## Fórmula

Quantidade de hosts por sub-rede:

```text
2^bits_de_host - 2
```

## Tabela de referência

| CIDR | Máscara | Hosts úteis |
|---|---:|---:|
| /24 | 255.255.255.0 | 254 |
| /25 | 255.255.255.128 | 126 |
| /26 | 255.255.255.192 | 62 |
| /27 | 255.255.255.224 | 30 |
| /28 | 255.255.255.240 | 14 |
| /29 | 255.255.255.248 | 6 |
| /30 | 255.255.255.252 | 2 |

## Exemplo /24

```text
Rede: 192.168.100.0/24
Máscara: 255.255.255.0
Hosts válidos: 192.168.100.1 até 192.168.100.254
Broadcast: 192.168.100.255
```

## Exemplo /25 (duas sub-redes)

```text
Rede 1: 192.168.100.0/25
Hosts: 192.168.100.1 até 192.168.100.126
Broadcast: 192.168.100.127

Rede 2: 192.168.100.128/25
Hosts: 192.168.100.129 até 192.168.100.254
Broadcast: 192.168.100.255
```

## Comando útil

```bash
ipcalc 192.168.100.0/24
```
