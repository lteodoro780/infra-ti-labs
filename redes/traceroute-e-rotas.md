# Traceroute e Rotas

## Ver rota padrão

Linux:

```bash
ip route
```

Windows:

```cmd
route print
```

## Traçar caminho até destino

Linux:

```bash
traceroute 192.168.100.10
tracepath 192.168.100.10
```

Windows:

```cmd
tracert 192.168.100.10
```

## Ver gateway

```bash
ip route | grep default
```
