# ——————————————————————————————————————————
# r2d : Radianos  → Graus
# ——————————————————————————————————————————
r2d := proc(theta_rad)
    # Converte qualquer escalar, lista, Vector ou Matrix
    # de radianos para graus.
    return 180/Pi *~ theta_rad;
end proc:

# ——————————————————————————————————————————
# d2r : Graus → Radianos
# ——————————————————————————————————————————
d2r := proc(theta_deg)
    # Converte qualquer escalar, lista, Vector ou Matrix
    # de graus para radianos.
    return Pi/180 *~ theta_deg;
end proc:

#savelibname := "/home/ivan/.config/maple/libs/eletromag.mla":
#save r2d, d2r, savelibname;
