Para somar **cada linha** da sua matriz $A$ (3 × 4) e obter um vector com 3 entradas basta inverter a lógica que usamos para as colunas.

---

## 1. Gerador dentro de `Vector`

```maple
# A  é 3 × 4
rowSums := Vector(3,                         # 3 entradas (uma por linha)
                  i -> add(A[i, j], j = 1 .. 4));
```

* A função anónima `i -> …` é chamada para `i = 1,2,3`.
* `add(A[i, j], j = 1 .. 4)` percorre as quatro colunas da linha `i` e soma tudo.

Resultado → **Vector-coluna 3 × 1**:

$$
\text{rowSums} =
\begin{pmatrix}
A_{11}+A_{12}+A_{13}+A_{14}\\
A_{21}+A_{22}+A_{23}+A_{24}\\
A_{31}+A_{32}+A_{33}+A_{34}
\end{pmatrix}
$$

---

## 2. Produto matriz × vector de 1 s (forma mais “matricial”)

```maple
ones := Vector[column](4, 1);   # 4 × 1  →  ⟨1,1,1,1⟩ᵗ

rowSums := A . ones;            # (3 × 4) · (4 × 1)  ⇒  (3 × 1)
```

* A multiplicação matricial “acumula” todos os elementos de cada linha porque cada coluna de $A$ é multiplicada por 1 e depois somada.
* O resultado é igualmente um **vector-coluna 3 × 1**.
  Se você quiser um vector-linha: `rowSumsRow := Transpose(rowSums);`

---

### Tabelinha resumida

| Objetivo                  | Com gerador                                      | Com vector de uns                                                                                         |
| ------------------------- | ------------------------------------------------ | --------------------------------------------------------------------------------------------------------- |
| **Vector-coluna** (3 × 1) | `Vector(3, i -> add(A[i,j], j=1..4))`            | `A . Vector[column](4,1)`                                                                                 |
| **Vector-linha** (1 × 3)  | `Transpose(Vector(3, i -> add(A[i,j], j=1..4)))` | `Transpose(A . Vector[column](4,1))` ou `(<1,1,1,1> . A)`, se preferir começar com um vector-linha de 1 s |

Qualquer uma das duas abordagens dá o mesmo resultado; escolha a que achar mais intuitiva ou que se encaixe melhor no resto do seu código.

