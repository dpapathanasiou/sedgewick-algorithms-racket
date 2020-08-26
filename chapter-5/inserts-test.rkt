#lang racket/base

(require rackunit
         "inserts.rkt")

(check-equal? (insert-r 'topping 'fudge '(ice cream with fudge for dessert))
              '(ice cream with fudge topping for dessert))

(check-equal? (insert-l 'topping 'for '(ice cream with fudge for dessert))
              '(ice cream with fudge topping for dessert))

(check-equal? (multi-insert-r 'and 'fish '(fried fish poached fish grilled fish chips))
              '(fried fish and poached fish and grilled fish and chips))

(check-equal? (multi-insert-l 'fried 'fish '(chips and fish or fish and chips))
              '(chips and fried fish or fried fish and chips))
