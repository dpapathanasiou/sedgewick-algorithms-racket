#lang racket/base

(require rackunit
         "inserts.rkt")

(check-equal? (insert-r 'topping 'fudge '(ice cream with fudge for dessert))
              '(ice cream with fudge topping for dessert))

(check-equal? (insert-l 'topping 'for '(ice cream with fudge for dessert))
              '(ice cream with fudge topping for dessert))

