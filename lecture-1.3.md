## Lecture 1.3

(first ask about progress in forming groups and choosing a programming langauages ... programming languages some students where interested in: Haskell, Fortran/Algol (sth old), Go, PhP, Julia, Q#, Matlab, Ruby on Rails, ... probably some more ... one language I would like to add is Elm which implements [Functional Reactive Programming](https://en.wikipedia.org/wiki/Functional_reactive_programming), picking up on a discussion we had in class of how to reconcile the idea of functional programming with the idea of not having just one input and one output but rather streams of inputs and outputs and then continue potentially forever)

#### Algebra

How far did we go in our quick tour of school mathematics? Roughly primary school, computing with numbers. 

Algebra induces a radical new **big idea**: instead of thinking of variables as place holders for terms/numbers: variables as "first class citizens"

Historically, this did not come easy. The first time the method of algebra appears fully developed in most of its basic ideas is a turning point in history. Please have a look at [Descarte's Geometry](http://www.gutenberg.org/ebooks/26400), first published in 1637. (It is always worth looking at Wikipedia so read up on [Descartes](https://en.wikipedia.org/wiki/René_Descartes) who led a very interesting live that is full of amusing anecdotes and his books, the [Discourse on the Method](https://en.wikipedia.org/wiki/Discourse_on_the_Method) and its appendix, the [Geometry](https://en.wikipedia.org/wiki/La_Géométrie), are, in my opinion, arguably the most important publications in philosophy and mathematics of all time. A great resource on  philosophy and logic and some areas of mathematics is the Stanford Encyclopedia of Philosophy which also has an article on [Descartes mathematics](https://plato.stanford.edu/entries/descartes-mathematics/).) Even if you don't read French, just by browsing through the pages, you see that Descartes, who just escaped the middle ages, did write in a style that is still readable today and that looks like modern mathematics. You can also look at a [facsimile of the original](). Even without trying to understand the maths in detail, I found for example [page 301 of the original](https://fr.wikisource.org/wiki/Page:Descartes_La_Géométrie.djvu/11) worth looking at. We see that he didnt use "=" (which, in fact, was introduced already earlier by [Robert Recorde](https://en.wikipedia.org/wiki/Robert_Recorde) in 1557 but not widely used yet), but that otherwise all is already there. 

		Little research project: Why did Descartes use a symbol for "=" that is not symmetric? 
		Could there be a connection to the idea of rewriting that we mentioned above?
	
Ok, after this historic excursion, let us go back to calculating with terms containing variables.

		do we need new equations?
			what, for example, about (x+y)+x = 2x+y ? Get out pen and paper.
		needs commutativity
		write out all equations we have so far (could do this together at the whiteboard)
		innocent but important question: how do we know that we have all equations?

The answer to the last question, leads to the next topic, the title of which contains 4 **big ideas**.

#### Soundness, Completeness, Syntax, Semantics

##### Soundness and Completeness
		First review how we use equations for computations. Emphasise that this is as in high school.
		Two important questions arise:
		Soundness: How do we know that the equations are correct?
		Completeness: How do we know that we found all equations?
		How do we even start thinking about these questions? Brainstorm with the students ...
		Answer will be (at this moment only informal discussion):
			syntax vs semantics
			terms vs algebras
				computation syntactically as rewriting of terms
				computation semantically by evaluating terms in an algebra
				[rewriting of terms amounts to implementing an interpreter for a programming language
				 evaluating in an algebra takes the algebra as a device capable of computation as primitive]
			language vs models
			soundness: The equations are true in the intended model
			completeness: All equations that hold in the intended model can be derived using the equations
			what is the language in our example?
			what is the model in our example?
			can we keep them separated? this is difficult if this is a new idea to you, requires lots of practice
			let us try to make this very explicit by using different notation
			what does relate the two different realms of formal language and their models?
				there is a meaning function ... write it out ...
				explain how 
					the formal language is a programming language
					the meaning function is an interpreter
					the meaning function is compositional (or recursive (but maybe keep this for later))
					how can we make "compositional" more precise? (just mention this question for later)

### Summary of big ideas
 - terms are trees (maybe only a small idea? But it is of fundamental importance)
 - variables as first class citizens (ideas can seem small in hindsight, that is why I emphasised Descartes)
 - syntax (syntax has no meaning, just given by `naked' rules)
 - semantics (semantics is a map from syntax to "meaning" ... do you see the self-reference here?)
 - soundness (are the rules correct?)
 - completeness (do we have all rules?)
 

