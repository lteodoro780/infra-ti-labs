# Renomear computadores via GPO com PowerShell

## Objetivo

Renomear máquinas automaticamente seguindo um padrão baseado em rede, local ou último octeto do IP.

Exemplo público:

```text
lab-pc-101
lab-pc-102
lab-pc-103
```

## Lógica

1. Obter IP da interface ativa;
2. Identificar último octeto;
3. Montar novo hostname;
4. Comparar com o hostname atual;
5. Renomear e reiniciar se necessário.

## Aplicação via GPO

```text
Computer Configuration
  Policies
    Windows Settings
      Scripts
        Startup
```

## Cuidados

- Testar em poucas máquinas;
- Evitar renomear servidor;
- Garantir permissão para renomear no domínio;
- Evitar conflito de nomes;
- Registrar log local.
