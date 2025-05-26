
read "./libeletromag.mpl";
with(LinearAlgebra):

L    := 100000000000000000000;
x, y := L/4, L/2;

lambda        := 0.56;
varepsilon__0 := 0.8854*10^(-11);

k             := 1/(4*Pi*varepsilon__0);
rho_L         := lambda;

cos_alpha := y/sqrt((x)^2 + y^2):
cos_beta  := y/sqrt((x-L)^2 + y^2):

sin_alpha := (x)/sqrt((x)^2 + y^2):
sin_beta  := (x-L)/sqrt((x-L)^2 + y^2):

Ex := k * rho_L * 1/y * (cos_beta  - cos_alpha):
Ey := k * rho_L * 1/y * ( sin_alpha - sin_beta):

Ex := evalf(Ex);
Ey := evalf(Ey);

