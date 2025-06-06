
with(LinearAlgebra):

# Pontos (listas → vectores-coluna)
A := Vector([xa, ya]):
B := Vector([xb, yb]):
C := Vector([xc, yc]):

v := ColumnStack(A, B, C);      # 2 × 3
#    └──────────────┐
#                   └ mesmo que:  v := <A | B | C>;
