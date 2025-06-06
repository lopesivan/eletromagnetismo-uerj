with(LinearAlgebra):

# --- 0. Pontos -----------------------------------------------------------
A := Vector([1/2, 0]):
B := Vector([0,  sqrt(3)/2]):
C := -A:

v := <A|B|C>;                       # 2 × 3             (não fixamos nada)

# --- 1. Matriz M ---------------------------------------------------------
M := Matrix([[ 1,  1],
             [-1,  0],
             [ 0, -1]]):            # 3 × 2

# --- 2. Diferenças BA e CA ----------------------------------------------
diferenca := v . M;                 # 2 × 2   (m × n)
m := RowDimension(diferenca);       #  nº linhas   = 2
n := ColumnDimension(diferenca);    #  nº colunas  = 2

# --- 3. Normas das colunas ----------------------------------------------
nCol := Vector(n,                   # agora é “n”, não mais 2
               j -> Norm( Column(diferenca, j), 2 )):   # n × 1

# --- 4. Matriz R = Δ / |Δ_j|³ -------------------------------------------
R := Matrix(m, n,
            (i,j) -> diferenca[i,j] / nCol[j]^3 );

# --- 5. Fatores de carga -------------------------------------------------
k  := 7:
Q  := 13:
QA := Q:   QB := Q:   QC := Q:

Qvec := k * Vector( [ QA*QB,  QA*QC ] ):

# se o nº de colunas mudar, adapte aqui o cálculo dos fatores
R := Matrix(m, n,
            (i,j) -> R[i,j] * Qvec[j] );

# --- 6. Soma das linhas --------------------------------------------------
ones := Vector[column]( n, 1 ):      # length = nº de colunas de R
rowSums := R . ones;                 # m × 1  (soma de cada linha)

evalf(rowSums);
