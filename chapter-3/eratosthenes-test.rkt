#lang racket/base
 
(require rackunit
         "eratosthenes.rkt")

(check-equal? (primes 30) '(2 3 5 7 11 13 17 19 23 29) "All the prime numbers between 0 and 30")