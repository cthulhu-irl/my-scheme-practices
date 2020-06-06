(define (twice-each ls) (map (lambda (x) (* x 2)) ls))
(define (sub-list a b) (map - a b))

(format #t "twice-each '(1 2 3 4): ~a\n" (twice-each '(1 2 3 4)))
(format #t "sub-list '(1 2 3) '(2 4 6): ~a\n"
    (sub-list '(1 2 3) '(2 4 6)))

