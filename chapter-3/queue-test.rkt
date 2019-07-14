#lang racket/base
 
(require rackunit
         "queue.rkt")

(test-case
 "Confirm FIFO sequence on pop"
 (let ([queue (make-queue)])
   (for ([x (list 1 2 3 4)])
     (set! queue (enqueue x queue)))
   (let-values ([(head tail) (dequeue queue)])
     (check-equal? head 1)
     (check-equal? tail '(4 3 2)))))
