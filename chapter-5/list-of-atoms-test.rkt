#lang racket/base

(require rackunit
         "list-of-atoms.rkt")

(check-true (lat? '(Jack Sprat could eat no chicken fat)))

(check-false (lat? '((Jack) Sprat could eat no chicken fat)))

(check-false (lat? '(Jack (Sprat could) eat no chicken fat)))

(check-true (lat? '()))