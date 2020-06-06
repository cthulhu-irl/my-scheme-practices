(define (print-lines . lines)
    (if (null? lines)
        0
        (begin
            (format #t "~a\n" (car lines))
            (+ 1 (apply print-lines (cdr lines))))))

(print-lines "line 1" "line 2" "line 3")
