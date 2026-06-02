# Software Installation via GPO

## Requisitos

- Instalador `.msi`.
- Compartilhamento acessível por computadores do domínio.
- Permissão de leitura para `Domain Computers` ou equivalente.
- GPO vinculada à OU correta.

## Passos gerais

1. Abrir Group Policy Management.
2. Criar nova GPO.
3. Editar:

```text
Computer Configuration > Policies > Software Settings > Software Installation
```

4. Adicionar pacote usando caminho UNC.
5. Selecionar `Assigned`.
6. Reiniciar estação de teste.

## Diagnóstico

```cmd
gpupdate /force
gpresult /h C:\temp\gpo.html
```
