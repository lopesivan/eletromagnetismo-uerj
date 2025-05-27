with(Student[LinearAlgebra]):

r_ := <2, 6>;

varepsilon__0 := 0.8854*10^(-11):
k             := 1/(4*Pi*varepsilon__0):

q__1 := 0.300;
q__2 := 0.600;

norma_r := Norm(r_, 2):
_r      := r_/norma_r:

F_      := (k * q__1*q__2 / norma_r^2) * _r:

# theta   := arctan(r_[2], r_[1]):     # arctan(y , x)  →  exact angle
# theta2 := argument(r_[1] + r_[2]*I); # argument of the complex number

F_      := evalf(F_);
F       := Norm(F_, 2);
Fx      := F_[1];  # evalf(F*cos(theta));
Fy      := F_[2];  # evalf(F*sin(theta));

                            #                        8
                            # F  := 0.4044484095 x 10
                            #                        8
                            # Fx := 0.1278978171 x 10
                            #                        8
                            # Fy := 0.3836934512 x 10
# fim


