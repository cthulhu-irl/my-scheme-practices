(define (title-style-rec lst last)
    (if (null? lst)
        '()
        (let ((chr (car lst)) (rest (cdr lst)))
            (if (char-whitespace? last)
                (cons (char-upcase chr) (title-style-rec rest chr))
                (cons chr (title-style-rec rest chr))))))

(define (title-style s)
    (list->string (title-style-rec (string->list s) #\Space)))

(format #t "~a\n" (title-style "the tron legacy"))
(format #t "~a\n" (title-style "t h e     t r o n    l e g a c y"))

