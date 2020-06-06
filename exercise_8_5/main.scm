(define (func ls)
    (sqrt (apply + (map (lambda (x) (expt x 2)) ls))))

(format #t "(func '(2 2 1)): ~a\n" (func '(2 2 1)))
