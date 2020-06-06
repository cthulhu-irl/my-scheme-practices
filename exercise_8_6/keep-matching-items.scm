(define (keep-matching-items proc ls)
    (let loop((lsx ls) (matches '()))
        (if (null? lsx)
            (reverse matches)
            (let ((first (car lsx)) (rest (cdr lsx)))
                (loop rest (if (proc first)
                    (cons first matches) matches))))))

(define (my-filter proc ls) (keep-matching-items proc ls))

(format #t "(my-filter even? '(1 2 3 4)): ~a\n"
    (my-filter even? '(1 2 3 4)))
