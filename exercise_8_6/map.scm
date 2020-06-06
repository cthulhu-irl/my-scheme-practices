(define (first-each ls)
    (if (null? ls)
        '()
        (if (null? (car ls))
            (first-each (cdr ls))
            (cons (car (car ls)) (first-each (cdr ls))))))

(define (rest-each ls)
    (if (null? ls)
        '()
        (if (null? (car ls))
            (rest-each (cdr ls))
            (cons (cdr (car ls)) (rest-each (cdr ls))))))

(define (my-map proc . ls)
    (if (null? ls)
        '()
        (let ((firsts (first-each ls)) (rests (rest-each ls)))
            (if (null? firsts)
                '()
                (cons
                    (apply proc firsts)
                    (apply my-map proc rests))))))

(format #t "(my-map + '(1 2 3) '(1 2 3)): ~a\n"
    (my-map + '(1 2 3) '(1 2 3)))

(format #t "(my-map + '(1 2 3) '(1 2 3) '(1 2 3)): ~a\n"
    (my-map + '(1 2 3) '(1 2 3) '(1 2 3)))

(format #t "(my-map + '(1 2) '() '(1)): ~a\n"
    (my-map + '(1 2) '() '(1)))

(format #t "(my-map + '() '() '()): ~a\n"
    (my-map + '() '() '()))

