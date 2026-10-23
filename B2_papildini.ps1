# ----------------------------------------------------------------------
# B2. Rezultāts failā
# ----------------------------------------------------------------------

# Saglabā desmit lielākos procesus CSV failā, ko var atvērt Excel.
# Aizpildi vietu, kur stāv TODO.

$lielakie = Get-Process |
    Sort-Object WorkingSet -Descending |
    Select-Object -First 10 Name, WorkingSet

# TODO: saglabā $lielakie failā procesi.csv



$lielakie = Get-Process |
    Sort-Object WorkingSet -Descending |
    Select-Object -First 10 Name, WorkingSet

$lielakie | Export-Csv -Path "$HOME\Desktop\procesi.csv" -NoTypeInformation
