#lang racket/base

(require rackunit
         "curried-fn.rkt")

(define eq?-salad (eq?-c 'salad))

(check-true (eq?-salad 'salad))

(check-false (eq?-salad 'tuna))

(define remove-member-eq? (remove-member-f eq?))

(check-equal? (remove-member-eq? 'tuna '(tuna salad is good)) '(salad is good))