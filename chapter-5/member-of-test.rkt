#lang racket/base

(require rackunit
         "member-of.rkt")

(check-true (member? 'tea '(coffee tea or milk)))

(check-false (member? 'poached '(fried eggs and scrambled eggs)))

(check-false (member? 'liver '(bagels and lox)))