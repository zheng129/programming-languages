## Summary of jargon

(latest addition comes first, you may want to read bottom up)

#### normal form

A term is in normal form, if no rewrite rule can be applied to it.

#### rewrite rule

A rewrite rule is an equation that has been given a direction. For example the equation

        X + (Y + Z) = (X + Y) + Z
        
can be given a direction 

        X + (Y + Z) -> (X + Y) + Z
        
and this is enough to perform all additions of numbers (see below for the definition of num).

#### equation

An equation t=t' is formed from terms t,t' that are built by adding "meta"variables X,Y,Z. For example, in order to compute that

        1+2 = 1 + (1+1)
            = (1+1)+1
            = 3
            
we use the equation

        X + (Y + Z) = (X + Y) + Z
        
In class I wrote it as x+(y+z) = (x+y)+z but then I used the same symbols x,y,z also for the variables of algebra. This is potentially confusing, as these two kind of variables are very different. The variables of algebra are part of the syntax. The variables in the equation are used "on the meta level" as they are part of the language that is used to talk about the algebraic expressions. Another way to think about this is to say that the variables x,y,z of algebra stand for numbers, whereas the variables in the equations stand for terms. This is confusing as we are used to write things like 1+2=3 without making the difference between the term 1+2 and the number 3.


#### abstract syntax

Abstract syntax is what we describe using BNF. For example, in algebra we may write x*(y+z). This term is formed by first +'ing x and y and then *'ing x and y+z. Note that the last sentence discribes the terms without using brackets. So while syntax refers to strings such as x*(y+z), abstract syntax refers to the corresponding trees which do not contain brackets since the structure (first +, then *) is represented by the tree structure. 


#### term

Terms are built from operations. Finitely many rules are used to describe infinitely many terms.
For example, we defined numbers by two rules which can be written in [BNF](https://en.wikipedia.org/wiki/Backus–Naur_form) as

    num ::= 1 | num + 1

Then we also extended numbers to form expressions using + and * by adding, again in BNF,

    exp ::= num | exp + exp | exp * exp

And then to "algebraic expressions", which also may contain variables, by replacing the above with

    exp ::= num | exp + exp | exp * exp | x

where x is ranging over a given set of "variables".
