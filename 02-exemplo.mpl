with(LinearAlgebra):

# Pontos (listas → vectores-coluna)
A := Vector([1/2, 0]):
B := Vector([0, sqrt(3)/2]):
C := -A:

v := <A| B| C>;      # 2 × 3

# Matriz M  (3 × 2)
M := Matrix( [ [ 1,  1],
               [-1,  0],
               [ 0, -1] ] ):

# 1. Diferenças BA e CA  .....................................................
diferenca := v . M;                         # 2 × 2

#  coluna j → Column(diferenca,j)  devolve um Vector-column
n := Vector( 2,
        j -> Norm( Column(diferenca,j), 2 ));   # 2 × 1

# 3. R = D / |col|^3  ........................................................
R := Matrix( 2, 2,
        (i,j) -> diferenca[i,j] / n[j]^3 );

k  := 4:
QA := 5:   QB := 5:   QC := 15:

Q := k * Vector( [ QA*QB,  QA*QC ] ):      # 1 × 2

# Multiplicar cada coluna de R pelo respectivo fator Q
R := Matrix( 2, 2,
        (i,j) -> R[i,j] * Q[j] );

# # Resultado final (numérico, se desejar)
# evalf(R);
# rowSums := Vector( RowDimension(R),                 # nº de linhas
#                    i -> add( R[i, j], j = 1 .. 2 ) );

ones    := Vector[column](2, 1);
rowSums := R . ones;

# evalf((k*QA*QA/2)*3);
# evalf(-(k*QA*QA/2)*sqrt(3));

