(define (evens ls) (filter even? ls))

(define (func ls)
    (filter (lambda (x) (not (<= 10 x 100))) ls))

(format #t "(evens '(1 2 3 4)): ~a\n\n" (evens '(1 2 3 4)))
(format #t "(func '(100 10 2 120)): ~a\n\n" (func '(100 10 2 120)))

