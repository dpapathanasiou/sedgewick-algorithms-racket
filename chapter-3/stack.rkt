#lang racket/base

(provide (all-defined-out))

(define (make-stack)
  '())

(define (push x stack)
  (cons x stack))

(define (pop stack)
  (values (car stack) (cdr stack)))
