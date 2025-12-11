# Bash

## Generali

| Comando   | Spiegazione    |
| ---       | ---       | 
| `$RANDOM` | Variabile speciale che ti da un numero random |
| `${#variabile}` | Stampa la lunghezza della stringa dentro la variabile |
| `[[ condizioni ]]` | [Conditional Expressions](#conditional-expressions) | 
| `read A B ...` | Legge riga per riga dallo **stdin**. [Altro](#read) | 
| `while read A B ...` | Per leggere da file in modo comodo. [Esempio](#while-read) |

## Scripting

| Comando       | Spiegazione     | 
| ------------  | ------------    | 
| `#!/bin/bash` | Prima riga di uno script bash. Indica con quale interprete lo script si aspetta di essere seguito. |

## Conditional Expressions
> Copiare questa cosa https://www.gnu.org/software/bash/manual/html_node/Bash-Conditional-Expressions.html


## Ulteriori spiegazioni

### `read`

Può avere dei parametri in cui mette le sottostringhe della riga che ha trovato in base ai separatori definiti in `$IFS` (**spazio**, **\\t** e **\\n** di default).

Esempio: `echo "Ciao-sono-andrea" | IFS="-" read A B C ; echo $C`  
Variabili attese: `$A = Ciao` `$B = sono` `$C = andrea`  
Output: `andrea`

#### `while read`

Per leggere da file in modo comodo
```bash
while read A B ...;
do
    ...
done < percorso-al-file
```