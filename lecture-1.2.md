## Lecture 1.2

(first ask about progress in forming groups and choosing a programming langauages)

### Models of computation.

Before presenting our first model of computation in the standard mathematical style, let us pretend we we were researchers a hundred years ago.

How would you approach the question
	"What is computation?"

#### Numbers

What are the easiest examples of computation?
- Addition
- Multiplication

For the easiest example, they are surprisingly complicated. Why? Because we represent numbers as decimals. 

Let us simplify:
		
		What happens if we represent numbers in the unary numeral system?
			let us introduce some notation, 1, +
			now we can write all postive integers using abbreviations such as 3 to stand for (1+1)+1
			what equations do we need to calculate 2 + 3 = 5 ? Get out pen and paper and do this.
				[Interlude: for a programmer terms are trees]
				(1+1)+((1+1)+1) = ... = ((((1+1)+1)+1)+1)
			what equations do we need to calculate 2 x 3 = 6 ? Get out pen and paper and do this.
				[...]
		Can we write down the equations?
			associativity of +, distributivity of x
			what about the other equations such as commutativity? Not needed so far
				[maybe there is room for some investigation here ...]

    
Stocktaking: What did we learn about computation from this?
- terms are trees
- computing with terms via rewriting terms using equations
- very important question:
  - can we prove/disprove (decide) all equations?
  - [interlude/excursion on decidability]
- which leads to the related question:
  - how do we know that we are finished with a computation? 
  - [interlude/excursion on termination]
- answer (in a nutshell): rewriting to normal form
  - expand on this ...

#### Remarks:

- In class we contrasted the idea of rewriting equations as a model of computation, first studied by [Alonzo Church](https://en.wikipedia.org/wiki/Alonzo_Church) in detail, with the model of computation proposed by [Alan Turing](https://en.wikipedia.org/wiki/Alan_Turing), namely the [Turing machine](https://en.wikipedia.org/wiki/Turing_machine). I simplified a lot by explaining how the Turing machine is a model of computation well suited to imperative programming languages and hinted at how rewriting is a suitable model for functional programming. I now want to add a note of warning, this is really an over simplification and both models of computation are relevant for all programming languages. Maybe one way of understanding this is that both models of computation are equivalent, even if they look different. The equivalence of all models of computation is known as the [Church-Turing thesis](https://en.wikipedia.org/wiki/Church–Turing_thesis).
- Btw, the original paper of Turing [On Computable Numbers, with an Application to the Entscheidungsproblem](https://londmathsoc.onlinelibrary.wiley.com/doi/epdf/10.1112/plms/s2-42.1.230) is worth reading and in the first section he explains his rationale for the Turing machine.

#### Answers to some questions raised above:

For the language given by

        num ::= 1 | num + 1
        exp ::= num | exp + exp 
 
the equation

        X + (Y + Z) = (X + Y) + Z
        
is enough to calculate all additions. If we replace the definition of exp by 

        exp ::= num | exp + exp | exp * exp

we need to add equations

	X * 1 = 1
	X * Y = Y * X
	X * ( Y + Z ) = X * Y + X * Z

Note that we do not need `X + Y = Y + X`. This is only needed if we add variables, that is, if we replace the definition of exp by 

        exp ::= num | exp + exp | exp * exp | x

where `x` ranges of a set of "variables". 

What about associativity of multiplication `X * ( Y * Z ) = ( X * Y ) * Z` ?

And are the equations above really enough? What equation needs to be added if we take seriously that `+1` is different from the binary `+` ?
