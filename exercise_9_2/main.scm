(define (my-copy-file filename1 filename2)
    (let (
        (port1 (open-input-file filename1))
        (port2 (open-output-file filename2)))
            (let loop((chr (read-char port1)))
                (if (eof-object? chr)
                    (begin
                        (close-input-port port1)
                        (close-output-port port2)
                        #t)
                    (begin
                        (write-char chr port2)
                        (loop (read-char port1)))))))

(my-copy-file "hello.txt" "copy.txt")
