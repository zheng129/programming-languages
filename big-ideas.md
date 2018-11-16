# Big Ideas

(read bottom up ... out of date, but working on it ...)


#### ...

(some big ideas that are still to come: variables, scope, binding, free algebras, higher-order functions, type inference, polymorphism, co-induction, bisimulation, non-deterministic computation, shared memory, message-passing, synchronous vs asynchronous, ... not all of this unfortunately ... )

(could be added now: two dimensional syntax and string diagrams, ...)

#### Mathematics as a Programming Language

...

#### Category Theory

...

#### Lambda Calculus

The lambda calculus is intimately related to large numer of big ideas.

- Bound Variables, Scope, Capture Avoiding Substitution

- Higher Order Functions

- Call By Value vs Call By Name 

- Lazy Computations

- Higher Order Abstract Syntax

- Church-Turing Thesis

- Polymorphism

- Type Theory

- Dependent Types

- Recursively defined functions are fixed points
  - Maybe you remember from a calculus or physics class how important it can be to define a function not explcitely by a formula but implicitely as the solution of an equation. 
  - Similarly, recursive functions are solutions of equations.
  - This insight allowed computer scientists to develop powerful methods that are very different from the methods in calculus and physics but motivated by the same big ideas. To understand how this works in detail one needs to study Recursion Theory and/or  Domain Theory which are two areas that develop this idea.

#### Universal Properties

- ...
- We use the universal property 
  - of term-algebras to program with algebraic data types
  - of the natural numbers to find the Church encodings
  - of other type constructors to find computation rules for typed lambda calculi
- ...

#### Initiality as a Universal Characterisation of Induction

...

#### Congruence Relations

- Congruence relations as structure preserving equivalence relations. 
- Meaning as a quotient by a congruence relation.

#### Pattern Matching
- Is a powerful computational mechanism that often allows us to write high-level readable code.
- Pattern matching often allows us to reduce an infinite number of reductions to a finite number of equations.

#### Termalgebras

- turn syntax into an algebra and allow us to have both syntax and semantics as objects in the same category;
- provide a simple mechanism to turn meta-variables into object-variables and 
- allow us to do pattern matching in equational logic (via the congruence and substitution rule) and, thus, to reduce the typically infinite number of rewrite rules to a finite number of equations. 

#### Universal Algebra

- We all know particular algebras, such as the integers, from high-school. But the idea to collect all algebras (of a given signature) into one 'category' and investigate properties of these categories in general is a big step.

- Connecting with the previous point, this gives a general theory of data types, in contrast to studying particular data types on its own.

- Useful programming techniques such as algebraic data types directly come out of universal algebra.

#### Data Types as Algebras

... Abstract Data Types, Algebraic Data Types, ...

#### Normalisation by Evaluation

... see [here](https://hackmd.io/s/rkqjXBW9X) 

#### Preconditions, Postconditions, Hoare Logic

... 

#### Partial Correctness

- Partial correcntess is correctness assuming termination.
- Separate the verification of a program into partial correctness and termination. This is important since the methods to establish these properties are very different.

#### Invariants

- see [here](https://hackmd.io/s/rysQwJ2KX) 

#### Compositionality

- We will see many instances of this. For now, read again the lecture on [synatx and semantics](https://hackmd.io/hILQksyiTUW4mXxxOSF7eQ).

#### Termination by Measuring the Size of a Computation

- see [here](https://hackmd.io/s/BkXUkyw_Q) and following

#### Propositions = Types, Proofs = Programs, Induction = Recursion

- We have seen an example of a recursive program that is a proof by induction in the [lecture on Idris](https://hackmd.io/s/HyV1IYYd7). 

#### Theorem Proving

- Theorem proving is the area of computer science that studies how to formally prove mathematical theorems in a computer. It divides into the subfields of automatic and of interactive theorem proving.

- Theorem proving has applications in software engineering. For example for the verification of the correctness of programs.

- Some powerful classes of automatic theorem provers are known as SAT-solvers, SMT-provers, model-checkers. Some well-known interactive theorem provers (aka proof assistants) are Isabelle, Coq, Agda, Idris.

#### Induction: The Smallest Set Closed Under a Set of Rules

- [We discussed in some detail](https://hackmd.io/s/H1panO_um) that the set of natural numbers, the transitive closure of a relation, the set of programming languages given by a context-free grammar and the set of equations derivable from given axioms are all examples of inductively defined sets. 

- The task to show that a given element `e` is in a given inductively defined set `S` amounts to finding a derivation that constructs the element `e` from the rules defining `S`. 
- From this point of view, many different algorithms such as parsing and theorem proving fall into essentially the same class of problems.

#### Confluent and Terminating Rewrite Systems have Unique Normal Forms

- Computing with equations is circular, because equations are symmetric, that is, can be applied from left to right and from right to left. For example, 1/2=2/4=1/2=2/4=...

- Therefore it is good to have conditions under which any computation results in a unique result. (Local) confluence and termination are often not too hard to establish, see [the lectures on abstract reduction systems](https://hackmd.io/s/B1DPNGEdm).

#### Soundness and Completeness

...

#### Normal Forms as Representatives of Equivalence Classes

- Of course, we do not want to manipulate infinite sets of terms such as 1/2, 2/4, 3/6, ... directly. Therefore we set up rewrite rules that allow us to compute with normal forms such as 1/2 instead.
- ...

#### Isomorphisms and Up-To-Isomorphism

...

#### Separation of Syntax and Semantics

...

#### Meaning as a Quotient by an Equivalence Relation

- The meaning of a fraction such as 3/6 is the set of all fractions that are equivalent such as 1/2, 2/4, 3/6, ... 
- The meaning of arithmetic expressions has been discussed in detail in [the second lecture on syntax and semantics](https://hackmd.io/s/SyIA3Lx_Q).

#### Semantics as a Structure Preserving Map

- I could explain the  semantics (meaning) of German to you by translating German to English. This translation is a function that preserves the structure of the languages, for example, by mapping nouns to nouns and verbs to verbs, etc. 
- The meaning of arithmetic expressions has been discussed in detail in [the lecture on syntax and semantics](https://hackmd.io/hILQksyiTUW4mXxxOSF7eQ). 

#### Computation as Rewriting to Normal Form

- [MWE](https://en.wikipedia.org/wiki/Minimal_working_example): Cancelling fractions rewrites them to normal form. 
- Arithemtic expressions have been discussed in detail in [Lecture 1.2 and following](https://github.com/alexhkurz/programming-languages/blob/master/lecture-1.2.md). 
- Programming languages will be discussed later.

#### Abstract Syntax

- Terms are trees and trees are terms.
- The conversion from the concrete syntax of terms to the abstract syntax of trees is called parsing.

