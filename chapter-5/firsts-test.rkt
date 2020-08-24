#lang racket/base

(require rackunit
         "firsts.rkt")

(check-equal? (firsts '((apple peach pumpkin)
                        (plum pear cherry)
                        (grape raisin pea)
                        (bean carrot eggplant)))
              '(apple plum grape bean))

(check-equal? (firsts '((a b)
                        (c d)
                        (e f)))
              '(a c e))

(check-equal? (firsts '()) '())

(check-equal? (firsts '((five plums)
                        (four)
                        (eleven green oranges)))
              '(five four eleven))

(check-equal? (firsts '(((five plums) four)
                        (eleven green oranges)
                        ((no) more)))
              '((five plums) eleven (no)))
