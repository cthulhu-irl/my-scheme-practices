(define (cmp-len-desc a b) (< (length b) (length a)))

(define (func ls) (sort ls cmp-len-desc))

(format #t "(func '('(1 2 3) '(2 3 4 5) '(1 2))): ~a\n"
    (func (list '(1 2 3) '(2 3 4 5) '(1 2))))
