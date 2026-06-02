# Subnetting IPv4 — resumo prático

## Fórmula

Quantidade de hosts por sub-rede:

```text
2^bits_de_host - 2
```

## Exemplos

| CIDR | Máscara | Hosts úteis |
|---|---:|---:|
| /24 | 255.255.255.0 | 254 |
| /25 | 255.255.255.128 | 126 |
| /26 | 255.255.255.192 | 62 |
| /27 | 255.255.255.224 | 30 |
| /28 | 255.255.255.240 | 14 |
| /29 | 255.255.255.248 | 6 |
| /30 | 255.255.255.252 | 2 |

## Comando útil

```bash
ipcalc 192.168.100.0/24
```
