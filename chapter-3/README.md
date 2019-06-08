# Elementary Data Structures

## Arrays

These are continguous blocks of memory, whose key feature is constant time access.

[Vectors](https://docs.racket-lang.org/reference/vectors.html?q=vector#%28def._%28%28quote._~23~25kernel%29._vector%29%29) are how they are implemented in [racket/base](https://docs.racket-lang.org/reference/index.html).

### [Sieve of Eratosthenes](eratosthenes.rkt)

This algorithm is an example of how an array's constant time referencing property is useful for implementing this [ancient technique](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes) efficiently, even with the presence of the nested loop.

The [unit test](eratosthenes-test.rkt) confirms the set of prime numbers between 1 and 30.

## Linked Lists 

Linked lists are disparate chunks of memory, joined by pointers in memory. They come in primarily two flavors, [singly-linked](https://en.wikipedia.org/wiki/Linked_list#Singly_linked_list) and [doubly-linked](https://en.wikipedia.org/wiki/Doubly_linked_list).

As Sedgewick notes, these are native to lisp, and [racket lists](https://docs.racket-lang.org/guide/pairs.html) are implemented as singly-linked lists.

## Pushdown Stacks 

Stacks enforce last-in, first-out (LIFO) processing using two methods: push (put an item onto the stack) and pop (remove the top-most item off the stack).

One way to implement a stack is to use linked lists.

## Queues

Queues enforce first-in, first-out (FIFO) processing: insert puts a new item into the queue at the start (though some implementations allow insertion at any index), and remove deletes and returns the first element.
 
Queues also come in double-ended varieties, also known as deques, which combine aspects of both stacks and queues.
