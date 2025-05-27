
Em Maple há três jeitos práticos de fazer **várias variáveis receberem o mesmo valor**.
(Use `:=` — o operador de atribuição — e *não* `=`.)

| Forma                             | Exemplo                        | Comentário                                                             |
| --------------------------------- | ------------------------------ | ---------------------------------------------------------------------- |
| **Múltipla atribuição explícita** | `Qa, Qb, Qc := Q, Q, Q;`       | Junta tudo numa linha; basta repetir o valor à direita.                |
| **Repetição com o operador `$`**  | `Qa, Qb, Qc := Q $ 3;`         | `$` replica a expressão à esquerda dele (`Q`) o número indicado (`3`). |
| **Atribuições separadas**         | `Qa := Q:  Qb := Q:  Qc := Q:` | Útil se você já tem linhas diferentes ou quer comentar cada uma.       |

Qualquer uma funciona; escolha a que achar mais legível.
