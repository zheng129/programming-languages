## Lecture 1.2

### Models of computation.

Before presenting our first model of computation in the standard mathematical style, let us pretend we we were researchers a hundred years ago.

How would you approach the question
	"What is computation?"

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


