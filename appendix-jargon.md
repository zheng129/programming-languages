## Summary of jargon

#### term

Terms are built from operations. Finitely many rules are used to describe infinitely many terms.
For example, we defined numbers by two rules which can be written in [BNF](https://en.wikipedia.org/wiki/Backus–Naur_form) as

    num ::= 1 | num + 1

Then we also extended numbers to form expressions using + and * by adding, again in BNF,

    exp ::= num | exp + exp | exp * exp

And then to "algebraic expressions", which also may contain variables, by replacing the above with

    exp ::= num | exp + exp | exp * exp | x

where x is ranging over a given set of "variables".
