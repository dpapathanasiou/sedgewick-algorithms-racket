#lang racket/base
 
(require rackunit
         "stack.rkt")

(test-case
 "Confirm LIFO sequence on push"
 (let ([stack (make-stack)])
   (for ([x (list 1 2 3 4)])
     (set! stack (push x stack)))
   (check-equal? stack (list 4 3 2 1))))

(test-case
 "Confirm LIFO sequence on pop"
 (let ([stack (make-stack)])
   (for ([x (list 1 2 3 4)])
     (set! stack (push x stack)))
   (let-values ([(head tail) (pop stack)])
     (check-equal? head 4))))
