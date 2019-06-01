#lang racket/base
 
(require rackunit
         "gcd.rkt")

(check-equal? (gcd 461952 116298) 18 "GCD test")
