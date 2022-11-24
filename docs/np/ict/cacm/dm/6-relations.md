# Relations

!!! note

    Content on this page is written by Farrell and copied here for reference.

🚨The usage of R stands for relations, and not the set of real numbers in this chapter.

## Relations on a set

A relation on a set A is a relation, from A to A.

The relation of a set ⊆ A x A. [Refer back to Product sets in Week 4 Set Theory if unsure]

Lets say if A = {2,6,7}

R being a relation of set A: R = {(a,b)|a is a divisor of b}

R = {(2,2),(2,6))(6,6),(7,7)}

## Binary Relations

A binary relation from set A to set B is a set of ordered pairs R where the first element comes from A, while the second element comes from B

aRb denoted (a,b) ∈ R

aR/b denoted (a,b) ∉ R

[The / represents the / being cut through the letter, refer to the slide 11 on Binary relation]

Let's say that A = {4,5,6} and B = {a,b}

The relation R could be {(4,a),(4,b),(5,a),(5,b)}

4Ra denotes that (4,a)∈ R

6R/a denotes that (6,a) ∉ R

## Functions as relations

Function f from a set A to a set B assigns only one element of B to each element of A.

⭐️ f ⊆ A x B

f is a set of ordered pairs (a,b), where b = f(a)

## Properties of relations

Each relation can possess some properties

### Reflexive

A relation if reflexive, if (a,a) ∈ R exists for ever element a ∈ A

So a relation is reflexive if ∀a((a,a) ∈ R), and therefore irreflexive if ∀a((a,a) ∉ R)

So if set A = {a,b,c}

The relation on set A is reflexive if (a,a), (b,b) and (c,c) ALL exist.

The relation on set A is irreflexive if (a,a), (b,b) and (c,c) ALL DO NOT exist.

!!! tip

    So what does this mean? A relation on a set can be neither reflexive or irreflexive, if the relation on the set contains some of the reflexive ordered pairs, but not all of them.

### Symmetric

A relation on a set is symmetric if (b,a) ∈ R whenever (a,b) ∈ R. for ∀a,b ∈ A

Meaning: ∀a∀b ((a,b)∈ R) → (b,a) ∈ R

[the usage of arrow here to my knowledge is a bit ambiguous, just take it as "for all values of a and b, the ordered pair b,a should exist where a,b exists"]

So using the previous example where A ={a,b,c}

If the relation for example contains (a,c) and (b,c),  for the relation to be symmetric, (c,a) and (c,b) MUST exist. And the relation is not symmetric if either (c,a) or (c,b) does not exist

### Anti-Symmetric

!!! warning

    Anti-symmetric and asymmetric are very different.

A relation is said to be anti-symmetric if, (a,b) ∈ R and (b,a) ∈ R exists, then a = b for all cases.

Taking the example of A = {a,b,c}

If a relation of set A is {(a,a),(b,b),(c,c)} this relation is actually BOTH anti-symmetric, and symmetric. Because it fulfills the requirements of being anti-symmetric, if there was aRb, then bRa exists, only if a=b, which for all ordered pairs did achieve. Moreover, this relation is also symmetric because for all cases of aRb, bRa also existed.

If a relation of set A is {(a,a), (a,b), (b,b), (c,c)}. This relation IS anti-symmetric ONLY, because in the case where there is symmetry, meaning where aRb and bRa exists, it is only the case where a=b so anti-symmetry is achieved. However, this relation is NOT symmetric, because in the ordered pair (a,b), (b,a) did not exist, so the relation is not symmetric anymore.

If a relation of set A is {(a,b),(b,a)}, this relation is ONLY symmetric, because when (a,b) exists, (b,a) exists and vice versa, however where aRb and bRa existed, a ≠ b, so this relation is NOT anti-symmetric

If a relation of set A is {(a,b),(b,a),(a,c)}, this relation is NEITHER anti-symmetric NOR symmetric. It fails the fulfillment of anti-symmetry because in the case where (a,b) existed, (b,a) did exist, however a ≠ b, anti-symmetry is lost. Moreover, since  (a,c) existed, but (c,a) did not exist, then the relation cannot be symmetric.

!!! tip

    ️Asymmetric relations is the opposite of a symmetric relation, but is also not the equivalent of an anti-symmetric relation.

### Transitive

A relation is transitive if for every (a,b) ∈ R and (b,c) ∈ R, then (a,c) ∈ R for all a,b,c ∈ R

The notation is very crazy so imma just say it in words

For all values of a, b and c. If the relation a,b exists, and b,c exists, the relation a,c must exist.

Using the previous example where A = {a,b,c}

If the relation on set A is {(a,b).(b,c),(a,c),(c,a),(b,a),(c,b),(a,a),(b,b),(c,c)}, this relation is transitive.

(a,b) and (b,c) requires (a,c)

(a,b) and (b,a) requires (a,a)

(b,c) and (c,a) requires (b,a)

etc...

!!! note

    Long story short, to ensure a relation is transitive, you will need to go through all the possible transitions, if there is a transition that is missing, that relation is no longer transitive.

## Applications of relations

### Databases & Relations

A database of records is represented as an n-ary/ternary relation

Relations used to represent databases are also known as tables

## Representations of relations

### Matrix

Relations can be represented using matrices.

If R = {(1,2),(2,1),(3,2)}

Mr [matrix of R] =
                                 |0 1|
                                 |1 0|
                                 |0 1|

The 1 shows that the pair belongs to R, and 0 shows that the pair does not.

### Digraph

A digraph represents a relation, consisting of sets.

Looking at the example digraph in slide 29:

a b c d are known as vertexes

Any ordered pair of vertices, like a to b, a to d, c to b etc...is known as an edge.

In the ordered pair of a to b, vertex a is known as the initial vertex, and vertex b is known as the terminal vertex, for this edge

in the case of (b,b) in the diagram, it is known as a loop, which is just an arc from vertex b...to vertex b obviously...

Each ordered pair is represented using an arc [line] with its direction indicated by an arrow.
