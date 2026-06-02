# XCP-ng offline — guia de instalação e pós-instalação

## Cenário

Instalação de hipervisor em servidor físico sem acesso à internet.

## Cuidados

- Validar ISO;
- Usar mídia USB confiável;
- Verificar modo de boot;
- Conferir compatibilidade de controladora RAID;
- Planejar rede de gerenciamento.

## Checklist

```text
[ ] Baixar ISO em máquina com internet
[ ] Validar checksum
[ ] Gravar pendrive com ferramenta confiável
[ ] Configurar boot
[ ] Instalar no disco correto
[ ] Definir IP de gerenciamento
[ ] Testar acesso via cliente
[ ] Importar ISOs para datastore
```

## Problemas comuns

- falha ao instalar pacotes;
- erro de assinatura;
- pendrive mal gravado;
- ISO corrompida;
- incompatibilidade de hardware;
- falta de repositório em ambiente offline.

## Boas práticas

Manter uma pasta offline com:
- ISOs;
- drivers;
- documentação;
- pacotes extras;
- checksums.
