read "./libeletromag.mpl";


r2d(Pi);           # devolve 180
d2r([0, 90, 180]); # devolve [0, Pi/2, Pi]

r2d(Pi);           # 180.

r2d([Pi/2, Pi]);   # [90., 180.]

v := Vector([0, 90, 180]):
d2r(v);            # Vector([0., Pi/2, Pi])

