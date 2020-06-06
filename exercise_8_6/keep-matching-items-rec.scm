(define (keep-matching-items proc ls)
    (if (null? ls)
        '()
        (let ((first (car ls)) (rest (cdr ls)))
            (if (proc first)
                (cons first (keep-matching-items proc rest))
                (keep-matching-items proc rest)))))

(define (my-filter proc ls) (keep-matching-items proc ls))

(format #t "(my-filter even? '(1 2 3 4)): ~a\n"
    (my-filter even? '(1 2 3 4)))
