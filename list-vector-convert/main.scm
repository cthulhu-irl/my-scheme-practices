(define (vec2list vec)
    (let loop((lst '()) (k (- (vector-length vec) 1)))
        (if (< k 0)
            lst
            (loop (cons (vector-ref vec k) lst) (- k 1)))))

(define (list2vec-rec lst k)
    (if (null? lst)
        #()
        (let ((vec
                (if (null? (cdr lst))
                    (make-vector (+ k 1))
                    (list2vec-rec (cdr lst) (+ k 1)))))
            (begin
                (vector-set! vec k (car lst))
                vec))))

(define (list2vec lst) (list2vec-rec lst 0))

(display "\n")

(format #t "(list2vec '(1 2 3 4)): ~a\n"
    (list2vec '(1 2 3 4)))

(format #t "(vec2list #(1 2 3 4)): ~a\n"
    (vec2list #(1 2 3 4)))
