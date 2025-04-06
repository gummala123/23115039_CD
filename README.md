Project Description:

This project demonstrates the use of Lex and Yacc to parse and convert a specific arithmetic expression of the form:

a = b * c * d + 2;

into a custom intermediate instruction format.


---

Supported Expression Format:

The grammar is specifically designed to handle expressions in the following structure:

id1 = id2 * id3 * id4 + number;

Where:

id1, id2, id3, id4 → Identifiers (Variables like a, b, c, d)

number → Constant (like 2)



---

Output:

The above expression will be converted to a custom instruction:

maddmul id1, id2, id3, id4, number

Example:

Input:

a = b * c * d + 2;

Output:

Custom instruction: maddmul a, b, c, d, 2


---

Files Used:


---

Compilation Commands:

bison -d parser.y
flex lexer.l
gcc -o parser parser.tab.c lex.yy.c -lfl


---

Execution:

./parser

or using input file:

./parser < input.txt


---

Output Example:

Custom instruction: maddmul a, b, c, d, 2


---

Future Enhancements:

Support for more complex expressions

Handle parentheses

Generate assembly-like instructions

Symbol table implementation

Error handling improvements



---

Let me know if you want me to generate the full folder structure or add images/diagrams in your README too!
