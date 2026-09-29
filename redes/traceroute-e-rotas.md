# Traceroute e Rotas

## Objetivo

Identificar o caminho entre uma máquina e outro host da rede.

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
pathping 192.168.100.10
```

## Ver gateway

Linux:

```bash
ip route | grep default
```

Windows:

```cmd
ipconfig
```

## Descobrir vizinhos ARP

Linux:

```bash
ip neigh
arp -a
```

Windows:

```cmd
arp -a
```

## Observação

Traceroute mostra saltos de camada 3. Para descobrir o switch físico, geralmente é necessário consultar:
- tabela MAC do switch;
- LLDP/CDP;
- documentação de portas;
- controlador de rede.
