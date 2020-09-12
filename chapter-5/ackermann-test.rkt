#lang racket/base

(require rackunit
         "ackermann.rkt")

(check-equal? (A 1 2) 4)

(check-equal? (A 1 1) 3)

(check-equal? (A 3 2) 29)