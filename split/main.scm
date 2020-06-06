(define (xsplit str delim)
    (if (null? str)
        '()
        (let loop((strx str) (cell '()))
            (cond
                ((null? strx) '())
                ((char=? (car strx) delim)
                    (let ((token (list->string (reverse cell))))
                        (cons token (xsplit (cdr strx) delim))))
                (else
                    (loop (cdr strx) (cons (car strx) cell)))))))

(define (split str delim) (xsplit (string->list str) delim))

(format #t "(split \"abc,def,ghi,jkl\" #\\,): ~a\n"
    (split "abc,def,ghi,jkl" #\,))
