with(LinearAlgebra):

# Matriz v  (2 × 3)
v := Matrix( [ [1/2, 0           , -1/2],
               [0  , sqrt(3)/2   ,  0  ] ] ):

# Matriz M  (3 × 2)
M := Matrix( [ [ 1,  1],
               [-1,  0],
               [ 0, -1] ] ):

# 1. Diferenças BA e CA  ...............................................
diferenca := v . M;                         # 2 × 2

# 2. Norma (comprimento) de cada coluna ...............................
n := Vector( [ Norm( Column(diferenca,1), 2 ),
               Norm( Column(diferenca,2), 2 ) ] );   # 1 × 2 (col-vector)

# 3. R = D / |col|^3  ..................................................
R := Matrix( 2, 2,
             (i,j) -> diferenca[i,j] / n[j]^3 );

# -----------------------------------------------------------------------
k  := 4:
QA := 5:   QB := 5:   QC := 15:

Q := k * Vector( [ QA*QB,  QA*QC ] ):      # 1 × 2

# Multiplicar cada coluna de R pelo respectivo fator Q
R := Matrix( 2, 2,
             (i,j) -> R[i,j] * Q[j] );

# Resultado final (numérico, se desejar)
evalf(R);

evalf((k*QA*QA/2)*3);
evalf(-(k*QA*QA/2)*sqrt(3));

