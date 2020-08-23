#lang racket/base

(require rackunit
         "remove-member.rkt")

(check-equal? (remove-member 'mint '(lamb chops and mint jelly))
              '(lamb chops and jelly))

(check-equal? (remove-member 'toast '(bacon lettuce and tomato))
              '(bacon lettuce and tomato))
