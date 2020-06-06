(define (rev ls)
    (do ((lsx ls (cdr lsx)) (ret '() (cons (car lsx) ret)))
        ((null? lsx) ret)))

(define (sum ls)
    (do ((lsx ls (cdr lsx)) (ret 0 (+ ret (car lsx))))
        ((null? lsx) ret)))

(format #t "(rev '(1 2 3 4)): ~a\n\n" (rev '(1 2 3 4)))
(format #t "(sum '(1 2 3 4)): ~a\n\n" (sum '(1 2 3 4)))

