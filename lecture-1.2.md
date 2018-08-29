## Lecture 1.2

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

#### Algebra

How far did we go in our quick tour of school mathematics? Roughly primary school, computing with numbers. 

Algebra induces a radical new **big idea**: instead of thinking of variables as place holders for terms/numbers: variables as "first class citizens"

Historically, this did not come easy. The first time the method of algebra appears fully developed in most of its basic ideas is a turning point in history. Please have a look at [Descarte's Geometry](http://www.gutenberg.org/ebooks/26400), first published in 1637. Even if you don't read French, just by browsing through the pages, you see that Descartes, who just escaped the middle ages, did write in a style that is still readable today and that looks like modern mathematics. You can also look at a [facsimile of the original](). Even without trying to understand the maths in detail, I found for example [page 301 of the original](https://fr.wikisource.org/wiki/Page:Descartes_La_Géométrie.djvu/11) worth looking at. We see that he didnt use "=" (which, in fact, was introduced already earlier by [Robert Recorde](https://en.wikipedia.org/wiki/Robert_Recorde) in 1557 but not widely used yet), but that otherwise all is already there.

		Little research project: Why did Descartes use a symbol for "=" that is not symmetric? 
		Could there be a connection to the idea of rewriting that we mentioned above?
	
Ok, after this historic excursion, let us go back to calculating with terms containing variables.

		do we need new equations?
			what, for example, about (x+y)+x = 2x+y ? Get out pen and paper.
		needs commutativity
		write out all equations we have so far (could do this together at the whiteboard)
		innocent but important questions: how do we know that we have all equations?

