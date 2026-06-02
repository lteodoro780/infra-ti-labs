<#
.SYNOPSIS
Coleta informações básicas da estação Windows.

.DESCRIPTION
Script sanitizado para laboratório. Não envia dados para servidores externos.
#>

$ComputerInfo = [PSCustomObject]@{
    Hostname = $env:COMPUTERNAME
    User = $env:USERNAME
    Domain = $env:USERDOMAIN
    OS = (Get-CimInstance Win32_OperatingSystem).Caption
    IP = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.IPAddress -notlike '169.*' -and $_.IPAddress -ne '127.0.0.1'} | Select-Object -ExpandProperty IPAddress) -join ', '
}

$ComputerInfo | Format-List
