### Passo a passo da linha

```maple
R := Matrix( 2, 2,
             (i,j) -> diferenca[i,j] / n[j]^3 );
```

| Símbolo                   | Significado                                                                                                              | Observação                                                                                                                             |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------- |
| `Matrix( 2, 2, … )`       | Cria uma **matriz 2 × 2**                                                                                                | Os dois primeiros argumentos indicam nº de linhas e colunas.                                                                           |
| `(i,j) -> …`              | **Função geradora** (*lambda*) que recebe o par de índices `(i,j)` e devolve o valor a colocar naquela posição da matriz | Maple chamará essa função quatro vezes: para `(1,1)`, `(1,2)`, `(2,1)` e `(2,2)`.                                                      |
| `diferenca[i,j]`          | Elemento da matriz `diferenca` na linha *i* e coluna *j*                                                                 | `diferenca` foi calculada antes como `v . M`, portanto traz os vetores-diferença.                                                      |
| `n[j]`                    | **Comprimento (norma) da coluna *j*** de `diferenca`                                                                     | `n` é um vetor de tamanho 2 que você gerou com `Vector(2, j -> Norm(Column(diferenca,j),2))`.                                          |
| `n[j]^3`                  | Cubo desse comprimento                                                                                                   | Segue sua fórmula física/matemática $R_{ij} = \dfrac{\Delta_{ij}}{\|\,\Delta_j\|^{\,3}}$.                                              |
| `diferenca[i,j] / n[j]^3` | Valor retornado pela função geradora                                                                                     | Torna cada elemento de `R` proporcional a uma componente de `diferenca`, normalizada pelo **cubo** do módulo da coluna correspondente. |

#### Como Maple monta a matriz

1. **Posição (1,1)**

   * `i = 1`, `j = 1`
   * Valor → `diferenca[1,1] / n[1]^3`

2. **Posição (1,2)**

   * `i = 1`, `j = 2`
   * Valor → `diferenca[1,2] / n[2]^3`

3. **Posição (2,1)**

   * `i = 2`, `j = 1`
   * Valor → `diferenca[2,1] / n[1]^3`

4. **Posição (2,2)**

   * `i = 2`, `j = 2`
   * Valor → `diferenca[2,2] / n[2]^3`

No fim, `R` fica

$$
R \;=\;
\begin{pmatrix}
\dfrac{\Delta_{11}}{\,\|\,\Delta_{\;1}\|^3} & \dfrac{\Delta_{12}}{\,\|\,\Delta_{\;2}\|^3} \\
\dfrac{\Delta_{21}}{\,\|\,\Delta_{\;1}\|^3} & \dfrac{\Delta_{22}}{\,\|\,\Delta_{\;2}\|^3}
\end{pmatrix},
$$

onde $\Delta_{ij}$ é o elemento de `diferenca` e
$\|\,\Delta_j\|$ é a norma da **coluna** $j$.

---

#### Por que usar o gerador `(i,j) -> …`?

* **Sintaxe compacta**: evita escrever manualmente cada elemento.
* **Generaliza fácil**: se o tamanho da matriz mudar, basta ajustar os dois primeiros argumentos (`Matrix(m,n, …)`).
* **Clareza conceitual**: deixa explícita a relação matemática (elemento da diferença dividido pelo cubo da norma da coluna).

Se preferir, você poderia escrever de forma “explícita”:

```maple
R := Matrix([
        [diferenca[1,1]/n[1]^3,  diferenca[1,2]/n[2]^3],
        [diferenca[2,1]/n[1]^3,  diferenca[2,2]/n[2]^3]
      ]);
```

Mas o gerador é bem mais elegante e menos sujeito a erros de digitação.

