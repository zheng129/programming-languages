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
 - semantics (semantics is a map from syntax to "meaning" ... do you see the self-reference here?)
 - soundness (are the rules correct?)
 - completeness (do we have all rules?)

### Test

$$a\to b\Rightarrow w^U$$
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTMzNTg4MDI0MV19
-->