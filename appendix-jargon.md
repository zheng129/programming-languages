## Summary of jargon and definitions

(latest additions at the top, read bottom up)

#### formal system

As a generic term, the notion "formal system" does not have a precise definition. The idea is that a formal system is defined by rules that specify how to manipulate symbols in an effective way, that is, in a way that can be carried out by a machine. Examples inlcude large parts of mathematics or games such as chess. Indeed, by definition, formal systems coincide exactly with what can be implemented on a computer. Particular formal systems that we will study, will have precise definitions. Our first example is a formal language for arithmetic.


#### normal form

A term is in normal form, if no rewrite rule can be applied to it.

#### rewrite rule

A rewrite rule is an equation that has been given a direction. For example the equation

        X + (Y + Z) = (X + Y) + Z
        
can be given a direction 

        X + (Y + Z) -> (X + Y) + Z
        
and this is enough to perform all additions of numbers (see below for the definition of num).

#### equation

An equation `t=t'` is formed from terms `t,t'` that are built by adding "meta"variables `X,Y,Z`. For example, in order to compute that

        1+2 = 1 + (1+1)
            = (1+1)+1
            = 3
            
we use the equation

        X + (Y + Z) = (X + Y) + Z
        
In class I wrote it as `x+(y+z) = (x+y)+z` but then I used the same symbols `x,y,z` also for the variables of algebra. This is potentially confusing, as these two kind of variables are different. The variables of algebra are part of the syntax. The variables in the equation are used "on the meta level" as they are part of the language that is used to talk about the algebraic expressions. Another way to think about this is to say that the variables `x,y,z` of algebra stand for numbers, whereas the variables in the equations stand for terms. This is confusing as we are used to write things like `1+2=3` without making the difference between the term `1+2` and the number `3`. Yet another way to think about it is to say that `1+2` is a computation that still has to run whereas `3` is a value that does not need any further computation.

#### abstract syntax

Abstract syntax is what we describe using BNF. For example, in algebra we may write `x*(y+z)`. This term is formed by first `+`'ing `y` and `z` and then `*`'ing `x` and `y+z`. Note that my last sentence does not use brackets. So while syntax refers to strings such as `x*(y+z)`, abstract syntax refers to the corresponding trees which do not contain brackets since the structure "first `+`, then `*`" is represented by the tree structure. 

#### syntactic sugar

Syntactic sugar refers to notational conventions that make syntax easier to digest for human consumption. For example, in the language of arithmetic defined by 

        num ::= 1 | num + 1
        exp ::= num | exp + exp | exp * exp
        
the two occurrences of `+` refer to two different operations, the first is successor, the second addition. But we use the same notation to ease reading and calculation in concrete examples.


#### term

Terms are built from operations. Finitely many rules are used to describe infinitely many terms.
For example, we defined numbers by two rules which can be written in [BNF](https://en.wikipedia.org/wiki/Backus–Naur_form) as

        num ::= 1 | num + 1

Then we also extended numbers to form expressions using + and * by adding, again in BNF,

        exp ::= num | exp + exp | exp * exp

And then to "algebraic expressions", which also may contain variables, by replacing the above with

        exp ::= num | exp + exp | exp * exp | x

where x is ranging over a given set of "variables".

#### formal system

As a generic term, the notion "formal system" does not have a precise definition. The idea is that a formal system is defined by rules that specify how to manipulate symbols in an effective way, that is, in a way that can be carried out by a machine. Examples inlcude large parts of mathematics or games such as chess. Indeed, by definition, formal systems coincide exactly with what can be implemented on a computer. Particular formal systems that we will study, will have precise definitions. Our first example is a formal language for arithmetic.
