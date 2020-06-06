(define (wc filename)
    (let ((port (open-input-file filename)))
        (let loop((chr (read-char port))
                    (last #\newline)
                    (lines 0)
                    (words 0)
                    (chars 0))
            (if (eof-object? chr)
                (begin
                    (close-input-port port)
                    (list lines words chars))
                (loop
                    (read-char port)
                    chr
                    (if (char=? last #\newline)
                        (+ lines 1)
                        lines)
                    (if (and
                            (char-whitespace? last)
                            (not (char-whitespace? chr)))
                        (+ words 1)
                        words)
                    (+ chars 1))))))

(format #t "\n(wc /etc/proxychains.conf) -> (lines words chars): ~a\n"
    (wc "/etc/proxychains.conf"))
