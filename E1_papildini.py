# ----------------------------------------------------------------------
# E1. Kļūdas pa servisiem
# ----------------------------------------------------------------------

# Saskaiti, cik ERROR rindu ir katram servisam, un izvadi tos no biežākā uz retāko.
# Aizpildi vietu, kur stāv TODO.

skaits = {}

with open("sistema.log", encoding="utf-8") as f:
    for rinda in f:
        dalas = rinda.split()
        if dalas[2] == "ERROR":
            serviss = dalas[3].rstrip(":")
            # TODO: pieskaiti vienu šim servisam

# TODO: izvadi sakārtotus no lielākā uz mazāko

\
skaits = {}

with open(r"C:\Users\adria\Downloads\sistema.log", encoding="utf-8") as f:
    for rinda in f:
        dalas = rinda.split()
        if dalas[2] == "ERROR":
            serviss = dalas[3].rstrip(":")
            skaits[serviss] = skaits.get(serviss, 0) + 1

for serviss, cik in sorted(skaits.items(), key=lambda x: x[1], reverse=True):
    print(serviss, cik)
