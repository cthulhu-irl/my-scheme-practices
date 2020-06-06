(define (reduce fx init ls)
    (if (null? ls)
        init
        (let ((first (car ls)) (rest (cdr ls)))
            (reduce fx (fx init first) rest))))

(define (func ls)
    (sqrt (reduce + 0 (map (lambda (x) (expt x 2)) ls))))

(format #t "(func '(2 2 1)): ~a\n" (func '(2 2 1)))
