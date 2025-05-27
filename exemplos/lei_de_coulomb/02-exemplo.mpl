with(Physics[Vectors]):
Setup(mathematicalnotation = true):

F_ := k*(q__1*q__2)/Norm(r_)^2 * versor_r;

varepsilon__0 := 0.8854E-11:
k             := 1/(4*Pi*varepsilon__0):

r_            := 2*_i + 6*_j;
q__1          := 300E-3;
q__2          := 600E-3;

versor_r      := r_/Norm(r_):

Fx := Component( value(F_), 1 ):   # ou Fx := value( F_ . _i );
Fy := Component( value(F_), 2 ):   # ou Fy := value( F_ . _j );

F_ := evalf(F_);
Fx := evalf(Fx);
Fy := evalf(Fy);
F  := evalf(Norm(F_));
              #                        8                       8
              # F_ := 0.1278978170 x 10  _i + 0.3836934511 x 10  _j

              #                        8
              # Fx := 0.1278978170 x 10

              #                        8
              # Fy := 0.3836934511 x 10

              #                       8
              # F := 0.4044484096 x 10
# fim
