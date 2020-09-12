# Recursion

This chapter is a little awkward given that the book is written with C++ in mind.

Recursion using C++ is certainly possible, and Sedgewick has both a [fibonacci](https://en.wikipedia.org/wiki/Fibonacci_number) and binary tree traversal example in the text.

Instead, this is a good opportunity to introduce topics from [The Little Schemer](https://mitpress.mit.edu/books/little-schemer-fourth-edition), especially since its self-described mission is:  

*"The goal of this book is to teach the reader to think recursively."*

## The First Commandment

When recurring on a list of atoms, lat, ask two questions about it: `(null? lat)` and `else`.

When recurring on a number, n, ask two questions about is: `(zero? n)` and `else`.

When recurring on a list of [S-expressions](https://en.wikipedia.org/wiki/S-expression), l, ask three questions about it: `(null? l)`, `(atom? (car l))`, and `else`.

List of Atoms
* [(lat?)](list-of-atoms.rkt)
* [Unit tests for (lat?)](list-of-atoms-test.rkt)

Member Of
* [(member?)](member-of.rkt)
* [Unit tests for (member?)](member-of-test.rkt)

## The Second Commandment

Use [cons](https://en.wikipedia.org/wiki/Cons) to build lists.

* [(remove-member)](remove-member.rkt)
* [Unit tests for (remove-member)](remove-member-test.rkt)

## The Third Commandment

When building a list, describe the first typical element, then [cons](https://en.wikipedia.org/wiki/Cons) it onto the natural recursion.

Firsts
* [(firsts)](firsts.rkt)
* [Unit tests for (firsts)](firsts-test.rkt)

Insert right and left
* [(inserts)](inserts.rkt)
* [Unit tests for (inserts)](inserts-test.rkt)

## The Fourth Commandment

Always change at least one argument while recurring. It must be changed closer to termination. The changing argument must be tested in the termination condition: when using `cdr`, test termination with `null?` and when using `sub1`, test termination with `zero?`.

* [(times?)](times.rkt)
* [Unit tests for (times?)](times-test.rkt)

## The Fifth Commandment

When building a value with `+` always use 0 for the value of the terminating line, for adding 0 does not change the value of an addition.

When building a value with `*` always use 1 for the value of the terminating line, for multiplying by 1 does not change the value of a multiplication.

When building a value with `cons` always consider `()` for the value of the terminating line.

Tuple-plus
* [(tup-plus?)](tup-plus.rkt)
* [Unit tests for (tup-plus?)](tup-plus-test.rkt)

Greater-Lesser
* [(greater-lesser?)](greater-lesser.rkt)
* [Unit tests for (greater-lesser?)](greater-lesser-test.rkt)

## The Sixth Commandment

Simplify only after the function is correct.

* [(remove-member-simplified)](remove-member-simplified.rkt)
* [Unit tests for (remove-member-simplified)](remove-member-simplified-test.rkt)

## The Seventh Commandment

Recur on the *subparts* that are of the same nature:

* On the sublists of a list
* On the subexpressions of an arithmetic expression

* [(value?)](value.rkt)
* [Unit tests for (value?)](value-test.rkt)

## The Eighth Commandment

Use help functions to abstract from representations.

* [(sets?)](sets.rkt)
* [Unit tests for (sets?)](sets-test.rkt)

## The Ninth Commandment

Abstract common patterns with a new function.

Curried/Higher-Order Functions
* [(remove-member-f)](curried-fn.rkt)
* [Unit tests for (remove-member-f)](curried-fn-test.rkt)
* [(higher-order-value?)](higher-order-value.rkt)
* [Unit tests for (higher-order-value?)](higher-order-value-test.rkt)

## The Tenth Commandment

Build functions to collect more than one value at a time.

[Collatz Conjecture](https://en.wikipedia.org/wiki/Collatz_conjecture)
* [(C) to count cycles](collatz.rkt)
* [Unit tests for (C) cycles](collatz-test.rkt)

[Ackermann Function](https://en.wikipedia.org/wiki/Ackermann_function)
* [(A)](ackermann.rkt)
* [Unit tests for (A)](ackermann-test.rkt)
