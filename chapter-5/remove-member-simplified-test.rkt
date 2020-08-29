#lang racket/base

(require rackunit
         "remove-member-simplified.rkt")

(check-equal? (remove-member-original 'mint '(lamb chops and mint jelly))
              '(lamb chops and jelly))

(check-equal? (remove-member-simplified 'mint '(lamb chops and mint jelly))
              '(lamb chops and jelly))

(check-equal? (remove-member-original 'toast '(bacon lettuce and tomato))
              '(bacon lettuce and tomato))

(check-equal? (remove-member-simplified 'toast '(bacon lettuce and tomato))
              '(bacon lettuce and tomato))
