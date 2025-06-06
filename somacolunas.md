Aqui vão **duas formas clássicas** (ambas “nativas” em Maple) para somar cada coluna de uma matriz $3\times4$ e guardar o resultado num vector com 4 entradas.

---

## 1. Gerador dentro de `Vector`

```maple
with(LinearAlgebra):

A := Matrix([[a11, a12, a13, a14],
             [a21, a22, a23, a24],
             [a31, a32, a33, a34]]):   # 3 × 4

#     ╭────────── comprimento  = 4  (uma entrada por coluna)
#     │ ╭──────── gerador: recebe j=1..4 e devolve ∑_{i=1}^{3} A[i,j]
#     ▼ ▼
colSums := Vector(4, j -> add(A[i, j], i = 1 .. 3)):
```

* **`Vector(4, …)`** cria um vector com 4 entradas.
* **`j -> …`** é uma *lambda*; Maple a chama com `j = 1, 2, 3, 4`.
* Para cada `j` fazemos `add(A[i,j], i=1..3)`, isto é, somamos as três linhas da coluna $j$.

`colSums` é um **vector‐coluna (4 × 1)** por padrão.
Se preferir um vector‐linha basta acrescentar a opção `datatype = float[8], shape = row` ou usar a próxima técnica.

---

## 2. Produto “linha de uns” × matriz

Vector‐linha com menos digitação:

```maple
ones := Vector[row](1, 3, 1);   #  ⟨1  1  1⟩  (1 × 3)

colSumsRow := ones . A;         # (1 × 3) · (3 × 4)  ⇒  (1 × 4)
```

* O operador ponto (`.`) faz a multiplicação matricial.
* Como cada elemento de `ones` vale 1, o produto calcula exatamente
  $(1,1,1) \, A$ – ou seja, soma verticalmente cada coluna de $A$.
* O resultado é uma **matriz 1 × 4** (row vector).
  Se você quiser convertê-la num `Vector` comum:

  ```maple
  colSums := <colSumsRow>;   # tira as “orelhas” de matriz
  ```

---

### Escolhendo o formato

| Quer…                 | Faça…                                             |
| --------------------- | ------------------------------------------------- |
| **Vector‐coluna** 4×1 | `colSums := Vector(4, j -> add(A[i,j], i=1..3)):` |
| **Vector‐linha** 1×4  | `colSumsRow := Vector[row](1,3,1) . A;`           |

Em ambos os casos cada entrada é
$\displaystyle \sum_{i=1}^{3} A_{i\,j}$, isto é, a soma dos valores da coluna $j$.

