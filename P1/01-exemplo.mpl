read "./libeletromag.mpl";
with(LinearAlgebra):

Qa, Qb, Qc := Q $ 3;

A := <a*cos(d2r(60)), 0>;
B := <0, a*sin(d2r(60))>;
C := -A;

AB_:= B-A;
AC_:= C-A;
BC_:= C-B;

BA_, CA_, CB_ := -AB_, -AC_, -BC_;

AB := Norm(AB_,2);
AC := Norm(AC_,2);
BC := Norm(BC_,2);

BA, CA, CB := AB, AC, BC;

Ra_ := K*Qa*( (Qc/CA^3)*CA_ + (Qb/BA^3)*BA_ );
Ra := Norm(Ra_,2);

Rb_ := K*Qb*( (Qc/CB^3)*CB_ + (Qa/AB^3)*AB_ );
Rb := Norm(Rb_,2);

Rc_ := K*Qc*( (Qc/BC^3)*BC_ + (Qa/AC^3)*AC_ );
Rc := Norm(Rc_,2);
