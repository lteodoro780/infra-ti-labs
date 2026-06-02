# Traceroute e rotas

## Objetivo

Identificar o caminho entre uma máquina e outro host da rede.

## Linux

```bash
ip route
traceroute 192.168.100.10
tracepath 192.168.100.10
```

## Windows

```cmd
route print
tracert 192.168.100.10
pathping 192.168.100.10
```

## Descobrir gateway

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

Traceroute mostra saltos de camada 3. Para descobrir switch físico, geralmente é necessário consultar:
- tabela MAC do switch;
- LLDP/CDP;
- documentação de portas;
- controlador de rede.
