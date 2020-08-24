#lang racket/base

(provide firsts)

(define firsts
  (λ (l)
    (if (null? l) '()
        (cons (car (car l))
              (firsts (cdr l))))))
