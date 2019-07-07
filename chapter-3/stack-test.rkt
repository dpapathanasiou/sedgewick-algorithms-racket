#lang racket/base
 
(require rackunit
         "stack.rkt")

(test-case
  "Confirm LIFO sequence"
  (let ([stack (make-stack)])
    (for ([x (list 1 2 3 4)])
      (set! stack (push x stack)))
    (check-equal? stack (list 4 3 2 1))))
