#lang racket/base

(require rackunit
         "greater-lesser.rkt")

(check-eq? (> 12 133) #f)

(check-eq? (> 120 11) #t)

(check-eq? (> 6 6) #f)

(check-eq? (< 4 6) #t)

(check-eq? (< 6 6) #f)

(check-eq? (< 8 3) #f)
