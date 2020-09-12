#lang racket/base

(require rackunit
         "y-combinator.rkt")

(check-equal? (factorial 5) 120)

(check-equal? (fibonacci 5) 5)

(check-equal? (fibonacci 0) 0)

(check-equal? (fibonacci 2) 1)

(check-equal? (fibonacci 6) 8)
