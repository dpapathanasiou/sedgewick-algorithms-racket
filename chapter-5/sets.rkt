#lang racket/base

(provide subset?
         eqset?
         intersect?
         intersect
         union)

(require "member-of.rkt")

(define subset?
  (λ (set1 set2)
    (if (null? set1) #t
        (and (member? (car set1) set2)
             (subset? (cdr set1) set2)))))

(define eqset?
  (λ (set1 set2)
    (and (subset? set1 set2)
         (subset? set2 set1))))

(define intersect?
  (λ (set1 set2)
    (if (null? set1) #f
        (or (member? (car set1) set2)
            (intersect? (cdr set1) set2)))))

(define intersect
  (λ (set1 set2)
    (if (null? set1) '()
        (if (member? (car set1) set2)
            (cons (car set1)
                  (intersect (cdr set1) set2))
            (intersect (cdr set1) set2)))))

(define union
  (λ (set1 set2)
    (if (null? set1) set2
        (if (member? (car set1) set2)
            (union (cdr set1) set2)
            (cons (car set1)
                  (union (cdr set1) set2))))))
