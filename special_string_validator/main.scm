(define open-chars (list #\( #\{ #\[))
(define close-chars (list #\) #\} #\]))
(define pairs (map cons open-chars close-chars))

(define (find chr lst)
    (cond
        ((null? lst) #f)
        ((char=? chr (car lst)) chr)
        (else (find chr (cdr lst)))))

(define (is-open chr)
    (find chr open-chars))

(define (is-close chr)
    (find chr close-chars))

(define (opposite lst chr)
    (if (null? lst)
        #f
        (let ((pair (car lst)) (rest (cdr lst)))
            (cond
                ((char=? chr (car pair)) (cdr pair))
                ((char=? chr (cdr pair)) (car pair))
                (else (opposite rest chr))))))

(define (validate-rec str closer)
    (let loop((strx str))
        (if (null? strx)
            (cons strx (char=? closer #\x00))
            (let ((chr (car strx)))
                (cond
                    ((is-open chr)
                        (let ((ret (validate-rec
                                        (cdr strx)
                                        (opposite pairs chr))))
                            (if (not (cdr ret))
                                ret
                                (loop (car ret)))))
                    ((is-close chr)
                        (cons (cdr strx) (char=? closer chr)))
                    (else (cons strx #f)))))))

(define (validate str)
    (cdr (validate-rec (string->list str) #\x00)))

(format #t "')': ~a\n" (validate ")"))
(format #t "'(123)': ~a\n" (validate "(123)"))
(format #t "'{}(}': ~a\n" (validate "{}(})"))
(format #t "'{[()()][]}{}': ~a\n" (validate "{[()()][]}{}"))

