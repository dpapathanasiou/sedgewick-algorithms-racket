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

One way to implement a stack is to use linked lists, and since those are native to racket, the [implementation](stack.rkt) is quite simple.

### Push

By definition, [cons](https://docs.racket-lang.org/reference/pairs.html?q=car#%28def._%28%28quote._~23~25kernel%29._cons%29%29) of element onto a list pushes the element to the first position in a list, returning the updated list.

### Pop

The [car](https://docs.racket-lang.org/reference/pairs.html?q=car#%28def._%28%28quote._~23~25kernel%29._car%29%29) and [cdr](https://docs.racket-lang.org/reference/pairs.html?q=car#%28def._%28%28quote._~23~25kernel%29._cdr%29%29) commands in [racket-base](https://docs.racket-lang.org/reference/index.html?q=car) (or [first](https://docs.racket-lang.org/reference/pairs.html?q=car#%28def._%28%28lib._racket%2Flist..rkt%29._first%29%29) and [rest](https://docs.racket-lang.org/reference/pairs.html?q=car#%28def._%28%28lib._racket%2Flist..rkt%29._rest%29%29) in the [extended racket library](https://docs.racket-lang.org/reference/index.html?q=car)) correspond to the first element and remainder of the list, respectively.

Since the [implementation](stack.rkt) is immutable, the [tests](stack-test.rkt) use the [set!](https://docs.racket-lang.org/reference/set_.html?q=car#%28form._%28%28quote._~23~25kernel%29._set%21%29%29) construct to record the changes made by `push` and `pop` on the original stack.

## Queues

Queues enforce first-in, first-out (FIFO) processing: insert puts a new item into the queue at the start (though some implementations allow insertion at any index), and remove deletes and returns the first element.
 
Queues also come in double-ended varieties, also known as deques, which combine aspects of both stacks and queues.

### Enqueue

[This implementation](queue.rkt) uses [lists](https://docs.racket-lang.org/guide/pairs.html), and similar to the stack, uses [cons](https://docs.racket-lang.org/reference/pairs.html?q=car#%28def._%28%28quote._~23~25kernel%29._cons%29%29) for `enqueue`.

### Dequeue

Since the first element in winds up in the last position in the list, `dequeue` uses [list-ref](https://docs.racket-lang.org/reference/pairs.html?q=vector#%28def._%28%28quote._~23~25kernel%29._list-ref%29%29) to retrieve it, along with a recursive function (strictly in terms of [car](https://docs.racket-lang.org/reference/pairs.html?q=car#%28def._%28%28quote._~23~25kernel%29._car%29%29) and [cdr](https://docs.racket-lang.org/reference/pairs.html?q=car#%28def._%28%28quote._~23~25kernel%29._cdr%29%29)) to get all the elements up until the last one.

Using the [extended racket library](https://docs.racket-lang.org/reference/index.html?q=car) would have been simpler, since it provides [take](https://docs.racket-lang.org/reference/pairs.html?q=take#%28def._%28%28lib._racket%2Flist..rkt%29._take%29%29), which does the latter more directly.
