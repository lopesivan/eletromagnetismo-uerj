with(Student[LinearAlgebra]):

r_ := <2, 6>;

varepsilon__0 := 0.8854*10^(-11):
k             := 1/(4*Pi*varepsilon__0):

q__1 := 0.300;
q__2 := 0.600;

norma_r  := Norm(r_, 2):
_r := r_/norma_r:

F_ := (k * q__1*q__2 / norma_r^2) * _r:

evalf(F_);

F := Norm(F_, 2);
                            #                       8
                            # F := 0.4044484097 x 10
# fim
