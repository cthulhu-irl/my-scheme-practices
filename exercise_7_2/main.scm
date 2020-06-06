(define (xrev ls carry)
    (if (null? ls)
        carry
        (let ((first (car ls)) (rest (cdr ls)))
            (xrev
                rest
                (if (null? carry)
                    (list first)
                    (cons first carry))))))

(define (rev ls) (xrev ls '()))

(define (xint str n)
    (if (null? str)
        n
        (let ((c (car str)) (rest (cdr str)))
            (xint rest (+ (* n 10) (- (char->integer c) 48))))))

(define (int str) (xint (string->list str) 0))

(format #t "(rev '()): ~a\n" (rev '()))
(format #t "(rev '(1 2 3)): ~a\n" (rev '(1 2 3)))
(display "\n")

(format #t "(int \"123\"): ~a\n" (int "123"))
(format #t "(int \"1\"): ~a\n" (int "1"))
(format #t "(int \"\"): ~a\n" (int ""))
(display "\n")

