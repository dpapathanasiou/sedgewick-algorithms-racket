#lang racket/base

(require rackunit
         "sets.rkt")

(check-true (subset? '(5 chicken wings) '(5 hamburgers 2 pieces fried chicken and buffalo wings)))

(check-true (eqset? '(6 large chicken with wings) '(6 chicken with large wings)))

(check-false (intersect? '(baked beans and spam) '(veggie burrito supreme)))

(check-equal? (intersect '(stewed tomatoes and macaroni) '(macaroni and cheese)) '(and macaroni))

(check-equal? (union '(stewed tomatoes and macaroni) '(macaroni and cheese)) '(stewed tomatoes macaroni and cheese))