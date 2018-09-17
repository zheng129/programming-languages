# Big Ideas

(read bottom up)


## ...

(some big ideas that are still to come: free algebras, higher-order functions, type inference, polymorphism, co-induction, bisimulation, non-deterministic computation, shared memory, message-passing, synchronous vs asynchronous, ...)

## Compositionality

We will see many instance of this. For now, read again the lecture on [synatx and semantics](https://hackmd.io/hILQksyiTUW4mXxxOSF7eQ).

## Termination by Measuring the Size of a Computation

## Propositions = Types, Proofs = Programs

## Induction: The Smallest Set Closed Under a Set of Rules

[We discussed in some detail]() that the set of natural numbers, the transitive closure of a relation, the set of programming languages given by a context-free grammar and the set of true equations derivable from given axioms are all examples of inductively defined sets. 


## Confluent and Terminating Rewrite Systems have Unique Normal Forms

- Computing with equations is circular, because equations are symmetric, that is, can be applied from left to right and from right to left. For example, 1/2=2/4=1/2=2/4=...

- Therefore it is good to have conditions under which any computation results in a unique result. (Local) confluence and termination are often not too hard to establish, see [the lectures on abstract reduction systems](https://hackmd.io/s/B1DPNGEdm).

## Normal Forms as Representatives of Equivalence Classes

- Of course, we do not want to manipulate infinite sets of terms such as 1/2, 2/4, 3/6, ... directly. Therefore we set up rewrite rules that allow us to compute with normal forms such as 1/2 instead.
- ...

## Meaning as a Quotient by an Equivalence Relation

- The meaning of a fraction such as 3/6 is the set of all fractions that are equivalent such as 1/2, 2/4, 3/6, ... 
- The meaning of arithmetic expressions has been discussed in detail in [the second lecture on syntax and semantics](https://hackmd.io/s/SyIA3Lx_Q).

## Semantics as a Structure Preserving Function

- I could explain the  semantics (meaning) of German to you by translating German to English. This translation is a function that preserves the structure of the languages, for example, by mapping nouns to nouns and verbs to verbs, etc. 
- The meaning of arithmetic expressions has been discussed in detail in [the lecture on syntax and semantics](https://hackmd.io/hILQksyiTUW4mXxxOSF7eQ). 

## Computation as Rewriting to Normal Form

- [MWE](https://en.wikipedia.org/wiki/Minimal_working_example): Cancelling fractions rewrites them to normal form. 
- Arithemtic expressions have been discussed in detail in [Lecture 1.2 and following](https://github.com/alexhkurz/programming-languages/blob/master/lecture-1.2.md). 
- Programming languages will be discussed later.
