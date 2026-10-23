# ----------------------------------------------------------------------
# C1. Atskaite par procesoru
# ----------------------------------------------------------------------

# Uzraksti PowerShell skriptu, kas izvada desmit procesus ar lielāko procesora patēriņu (CPU) un saglabā tos CSV failā. Katrai rindai jābūt procesa nosaukumam, CPU un atmiņai.


$cpuProcesi = Get-Process |
    Sort-Object CPU -Descending |
    Select-Object -First 10 Name,
        @{Name = 'CPU(s)';  Expression = { [math]::Round($_.CPU, 2) }},
        @{Name = 'Atmina(MB)'; Expression = { [math]::Round($_.WorkingSet / 1MB, 2) }}

$cpuProcesi | Format-Table -AutoSize

$cpuProcesi | Export-Csv -Path "$HOME\Desktop\cpu_procesi.csv" -NoTypeInformation
