#lang racket/base

(provide make-queue enqueue dequeue)

(define (make-queue)
  '())

(define (enqueue x queue)
  (cons x queue))

(define (first-n-elements queue n)
  (if (> n 0)
      (cons (car queue) (first-n-elements (cdr queue) (- n 1)))
      '()))

(define (get-last-element queue)
  (let ([len (length queue)])
    (if (> len 0)
        (list-ref queue (- len 1))
        '())))

(define (dequeue queue)
  (values
   (get-last-element queue)
   (first-n-elements queue (- (length queue) 1))))

        

