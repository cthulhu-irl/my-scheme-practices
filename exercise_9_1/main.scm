(define (read-file-line port)
    (let ((make-line (lambda (line) (list->string (reverse line)))))
        (let loop((line '()) (chr (read-char port)))
            (if (or (eof-object? chr) (char=? chr #\newline))
                (make-line line)
                (loop (cons chr line) (read-char port))))))

(define (read-file-lines port)
    (let ((lines '()) (line (read-file-line port)))
        (if (string-null? line)
            lines
            (cons line (read-file-lines port)))))

(define (read-lines filename)
    (let* (
        (port (open-input-file filename))
        (lines (read-file-lines port)))
            (begin
                (close-input-port port)
                lines)))

(format #t "~a\n" (read-lines "hello.txt"))
