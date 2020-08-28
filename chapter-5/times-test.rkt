#lang racket/base

(require rackunit
         "times.rkt")

(check-eq? (times 12 3) 36)

(check-eq? (times 12 0) 0)

(check-eq? (times 12 1) 12)
