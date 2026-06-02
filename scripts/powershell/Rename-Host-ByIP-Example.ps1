<#
.SYNOPSIS
Exemplo sanitizado de renomeação de host baseada no último octeto do IP.

.IMPORTANT
Teste em laboratório antes de usar em produção.
#>

$Prefix = "lab-pc-"
$Interface = Get-NetIPAddress -AddressFamily IPv4 |
    Where-Object { $_.IPAddress -like "192.168.100.*" } |
    Select-Object -First 1

if (-not $Interface) {
    Write-Host "IP do range esperado não encontrado."
    exit 0
}

$LastOctet = ($Interface.IPAddress -split '\.')[-1]
$NewName = "$Prefix$LastOctet"

if ($env:COMPUTERNAME -ne $NewName) {
    Rename-Computer -NewName $NewName -Force -Restart
} else {
    Write-Host "Hostname já está correto: $NewName"
}
