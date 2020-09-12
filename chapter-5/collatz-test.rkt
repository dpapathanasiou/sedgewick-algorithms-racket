#lang racket/base

(require rackunit
         "collatz.rkt")

(check-equal? (C 1) 0)

(check-equal? (C 9) 19)

(check-equal? (C 27) 111)


