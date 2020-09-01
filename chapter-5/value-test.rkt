#lang racket/base

(require rackunit
         "value.rkt")

(check-equal? (value '(+ 1 (* 3 4))) 13)

(check-equal? (value '(+ 1 (^ 3 4))) 82)

(check-equal? (value 'cookie) 'cookie)

(check-equal? (value '(cookie)) '())

