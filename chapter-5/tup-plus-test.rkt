#lang racket/base

(require rackunit
         "tup-plus.rkt")

(check-equal? (tup-plus '(2 3) '(4 6))
              '(6 9))

(check-equal? (tup-plus '(3 7) '(4 6 8 1))
              '(7 13 8 1))
