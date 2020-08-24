# Recursion

This chapter is a little awkward given that the book is written with C++ in mind.

Recursion using C++ is certainly possible, and Sedgewick has both a [fibonacci](https://en.wikipedia.org/wiki/Fibonacci_number) and binary tree traversal example in the text.

Instead, this is a good opportunity to introduce topics from [The Little Schemer](https://mitpress.mit.edu/books/little-schemer-fourth-edition), especially since its self-described mission is:  

*"The goal of this book is to teach the reader to think recursively."*

## The First Commandment

When recurring on a list of atoms, lat, ask two questions about it: `(null? lat)` and `else`.

When recurring on a number, n, ask two questions about is: `(zero? n)` and `else`.

When recurring on a list of [S-expressions](https://en.wikipedia.org/wiki/S-expression), l, ask three questions about it: `(null? l)`, `(atom? (car l))`, and `else`.

* [(lat?)](list-of-atoms.rkt)
* [Unit tests for (lat?)](list-of-atoms-test.rkt)

* [(member?)](member-of.rkt)
* [Unit tests for (member?)](member-of-test.rkt)

## The Second Commandment

Use [cons](https://en.wikipedia.org/wiki/Cons) to build lists.

* [(remove-member)](remove-member.rkt)
* [Unit tests for (remove-member)](remove-member-test.rkt)

## The Third Commandment

When building a list, describe the first typical element, then [cons](https://en.wikipedia.org/wiki/Cons) it onto the natural recursion.

* [(firsts)](firsts.rkt)
* [Unit tests for (firsts)](firsts-test.rkt)
