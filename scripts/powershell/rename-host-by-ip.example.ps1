# Exemplo sanitizado: renomear host com base no último octeto do IP.
# Use em laboratório antes de aplicar em produção.

$Prefix = "lab-pc-"
$LogPath = "C:\Windows\Temp\rename-host.log"

function Write-Log {
    param([string]$Message)
    $Time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$Time - $Message" | Out-File -FilePath $LogPath -Append -Encoding UTF8
}

$Ip = Get-NetIPAddress -AddressFamily IPv4 |
    Where-Object {
        $_.IPAddress -notlike "169.254*" -and
        $_.IPAddress -ne "127.0.0.1" -and
        $_.PrefixOrigin -ne "WellKnown"
    } |
    Select-Object -First 1 -ExpandProperty IPAddress

if (-not $Ip) {
    Write-Log "Nenhum IP válido encontrado."
    exit 1
}

$LastOctet = ($Ip -split "\.")[-1]
$NewName = "$Prefix$LastOctet"
$CurrentName = $env:COMPUTERNAME

Write-Log "IP detectado: $Ip"
Write-Log "Hostname atual: $CurrentName"
Write-Log "Novo hostname: $NewName"

if ($CurrentName -ieq $NewName) {
    Write-Log "Hostname já está correto."
    exit 0
}

try {
    Rename-Computer -NewName $NewName -Force
    Write-Log "Hostname alterado. Reiniciando..."
    Restart-Computer -Force
} catch {
    Write-Log "Erro ao renomear: $_"
    exit 1
}
