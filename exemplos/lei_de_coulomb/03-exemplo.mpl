with(Physics[Vectors]):
Setup(mathematicalnotation = true):

# força de Coulomb   F = k q1 q2 / |r|^3 ⋅ r
F_ := k*q__1*q__2/Norm(r_)^3 * r_;

k := 1/(4*Pi*varepsilon__0):

varepsilon__0 := 0.8854e-11:  # 8,854×10⁻¹²  F m⁻¹
r_            := 2*_i + 6*_j; # vector  ⟨2, 6, 0⟩
q__1          := 300e-3;      # 0,300 C
q__2          := 600e-3;      # 0,600 C

Fx       := value( F_ . _i ): # componente x
Fy       := value( F_ . _j ): # componente y

F_       := evalf(F_);
Fx       := evalf(Fx);
Fy       := evalf(Fy);
modulo_F := Norm(F_);

# fim
