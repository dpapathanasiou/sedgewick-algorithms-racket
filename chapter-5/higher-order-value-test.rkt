#lang racket/base

(require rackunit
         "higher-order-value.rkt")

(check-equal? (value '(+ 1 (* 3 4))) 13)

(check-equal? (value '(+ 1 (^ 3 4))) 82)

(check-equal? (value '(% 3 4)) -1)

(check-equal? (value '(- 10 3)) 7)

(check-equal? (value 'cookie) 'cookie)


