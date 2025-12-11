# Bash

## Generali

| Comando   | Spiegazione    |
| ---       | ---       | 
| `$RANDOM` | Variabile speciale che ti da un numero random |
| `${#variabile}` | Stampa la lunghezza della stringa dentro la variabile |
| `[[ condizioni ]]` | [Conditional Expressions](#conditional-expressions) | 
| `read A B ...` | Legge riga per riga dallo **stdin**. [Altro](#read) | 
| `while read A B ...` | Per leggere da file in modo comodo. [Esempio](#while-read) |
| `comando1 \| comando2`  | È la pipe; ficca nello **stdin** della roba di destra l'output della roba di sinistra |
| `cat file1 file2 ...` | Stampa i file uno dopo l'altro |
| `grep "substring"` | Cerca la substring dentro lo **stdin** e restituisce solo le righe che la contengono (`grep -- "substring"` se nella substring c'è il `-`) |
| `wc` | "word count", conta **`\n`**, **numero di parole** e **bytes** (ovvero caratteri se sono tutti ASCII). [Altro](#wc) | 

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

### `wc`
Questo comando senza nessun argomento legge dallo **stdin**.  
Passandogli un file come argomento `wc file` fornirà un input del tipo `Numero Nomefile`.  
Per estrarre il numero quando si utilizza la modalità col parametro, si utilizzano le operazioni sulle stringhe in questo modo: 
```bash
Appoggio=$(wc -l file)
Appoggio=${Appoggio%% *}
```
| Flag utili | Cosa fa | 
| --- | --- | 
| `-c` | Restituisce il numero di **byte** |
| `-l` | Restituisce il numero di **`\n`** | 
| `-w` | Restituisce il numero di **parole**
