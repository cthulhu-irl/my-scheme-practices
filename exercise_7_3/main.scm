(define (len ls)
    (let loop((n 0) (lsx ls))
        (if (null? lsx)
            n
            (loop (+ n 1) (cdr lsx)))))

(define (sum ls)
    (let loop((n 0) (lsx ls))
        (if (null? lsx)
            n
            (loop (+ n (car lsx)) (cdr lsx)))))

(define (rev ls)
    (let loop((lsx ls) (carry '()))
        (if (null? lsx)
            carry
            (loop (cdr lsx) (cons (car lsx) carry)))))

(define (range start end)
    (let loop((i end) (ls '()))
        (if (>= start i)
            ls
            (let ((j (- i 1)))
                (loop j (cons j ls))))))

(format #t "(len '()): ~a\n" (len '()))
(format #t "(len '(1)): ~a\n" (len '(1)))
(format #t "(len '(1 2 3 4)): ~a\n" (len '(1 2 3 4)))
(display "\n")

(format #t "(sum '()): ~a\n" (sum '()))
(format #t "(sum '(1)): ~a\n" (sum '(1)))
(format #t "(sum '(1 2 3 4)): ~a\n" (sum '(1 2 3 4)))
(display "\n")

(format #t "(rev '()): ~a\n" (rev '()))
(format #t "(rev '(1)): ~a\n" (rev '(1)))
(format #t "(rev '(1 2 3 4)): ~a\n" (rev '(1 2 3 4)))
(display "\n")

(format #t "(range 0 5): ~a\n" (range 0 5))
(format #t "(range 2 4): ~a\n" (range 2 4))
(format #t "(range 1 1): ~a\n" (range 0 0))
(format #t "(range 4 2): ~a\n" (range 4 2))
(display "\n")

