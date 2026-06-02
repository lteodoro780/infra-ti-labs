# Deploy do TightVNC via GPO

## Objetivo

Instalar o TightVNC em máquinas do domínio usando GPO e já aplicar configuração padrão.

## Boas práticas

- Usar MSI em compartilhamento acessível por computadores do domínio;
- Colocar o pacote no `SYSVOL` ou share dedicado;
- Dar permissão de leitura para `Domain Computers` ou `Authenticated Users`;
- Testar em uma OU pequena antes de aplicar geral.

## Caminho de exemplo

```text
\\domain.local\SYSVOL\domain.local\scripts\TightVNC\tightvnc.msi
```

## GPO

```text
Computer Configuration
  Policies
    Software Settings
      Software installation
```

Adicionar pacote como `Assigned`.

## Senha/configuração

O MSI instala o programa, mas nem sempre aplica senha automaticamente.

Opções comuns:

1. Usar transform `.mst`;
2. Aplicar chave de registro depois da instalação;
3. Usar script pós-instalação;
4. Usar ferramenta oficial de configuração silenciosa, quando disponível.

## Validação

Na máquina cliente:

```cmd
gpupdate /force
gpresult /r
```

Logs:

```text
Event Viewer > Application
Event Viewer > System
```

## Segurança

Nunca publique senha real de VNC em repositório público.
