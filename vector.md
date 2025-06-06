### O que significa `j -> …` nessa linha?

```maple
n := Vector(2,
            j -> Norm( Column(diferenca, j), 2 ));
```

1. **`Vector(2,  <gerador> )`**

   * O primeiro argumento (`2`) diz que o vetor terá **comprimento 2** (índices 1 e 2).
   * O segundo argumento pode ser

     * uma lista de valores, **ou**
     * uma **função geradora** que recebe o índice e devolve o valor correspondente.

2. **`j -> …` é justamente essa função geradora**.

   * Trata-se de uma *proc anônima* (lambda) em Maple.
   * A sintaxe geral é

     ```maple
     <variável> -> <expressão>
     ```

     Quando o `Vector` precisar do elemento **j-ésimo**, ele chama essa função, passa o valor de `j` (1 depois 2) e usa o resultado como entrada do vetor.

3. **Dentro da função**

   ```maple
   Norm( Column(diferenca, j), 2 )
   ```

   * `Column(diferenca, j)` devolve a coluna `j` da matriz `diferenca` como **Vector-coluna**.
   * `Norm( … , 2 )` calcula a norma Euclidiana (comprimento) desse vetor.

4. **Como o Maple executa**

   * Para `j = 1`: calcula `Norm(Column(diferenca, 1), 2)` → primeiro elemento de `n`.
   * Para `j = 2`: idem para a segunda coluna → segundo elemento.

Portanto `n` fica igual a:

```maple
n := Vector([
      Norm(Column(diferenca,1),2),   # primeira entrada
      Norm(Column(diferenca,2),2)    # segunda entrada
]);
```

O uso do gerador deixa o código compacto e evita repetir a expressão para cada índice.

#### Resumindo

* **`j`** é só o **parâmetro da função anônima**; assume os valores 1, 2, …, até o tamanho do vetor.
* **`j -> …`** define “como calcular o elemento *j*”.
* **`Vector(2, j -> …)`** monta o vetor chamando essa função para cada índice.

