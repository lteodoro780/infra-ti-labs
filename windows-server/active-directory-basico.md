# Active Directory Básico

## Comandos úteis PowerShell

Listar usuários:

```powershell
Get-ADUser -Filter * -Properties Enabled | Select-Object Name, SamAccountName, Enabled
```

Listar computadores:

```powershell
Get-ADComputer -Filter * -Properties OperatingSystem | Select-Object Name, OperatingSystem
```

Buscar usuário:

```powershell
Get-ADUser -Filter 'SamAccountName -like "usuario*"'
```

Ver grupos de um usuário:

```powershell
Get-ADPrincipalGroupMembership usuario.exemplo | Select-Object Name
```

## Boas práticas

- Evitar usar usuário administrador para serviços.
- Criar contas específicas para integrações.
- Documentar OUs, grupos e GPOs.
- Não publicar nomes reais de domínio ou usuários em repositórios públicos.
