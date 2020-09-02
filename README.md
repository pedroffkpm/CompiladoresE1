# CompiladoresE1
Primeira Etapa do trabalho de Compiladores INF01147

### To-Do:

___

- Reconhecimento dos tokens:
    - ~~palavras reservadas:~~
        - ~~(`int`, `float`, `if`, `else`, ...)~~

    - ~~caracteres especiais:~~
        - ~~(`:`, `;`, `{`, `}`, ...)~~
        - ~~*usar valor ASCII*~~

    - ~~operadores compostos:~~
        - ~~(`<=`, `>=`, `==`, `!=`, ...)~~

    - identificadores:
        - (caractere alfabético seguido de zero ou mais caracteres alfanuméricos)

    - literais:
        - (constantes do tipo int, float, boolean, char/string)

- Contagem de linhas:
    - int get_line_number(void)

- Ignorar Comentários:
    - no formato C99 (`//`, `/* */`)

- Lançar erros léxicos:
    - retornar token de erro

### Entrega:

___

- Arquivos *`tokens.h`* (sem modificações), *`main.c`*, *`scanner.l`* e *`Makefile`* compactados como `Etapa1.tgz`.




    