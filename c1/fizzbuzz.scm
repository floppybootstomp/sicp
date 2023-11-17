(define fb-mod
        (lambda (x y)
                (- x 
                   (* y (floor (/ x y))))))

(define fb-write-line
        (lambda (x)
                (begin (write x) (newline))))

(define fizzbuzz
        (lambda (x)
                (define fb-check
                        (lambda (num)
                                (if (and (= (fb-mod num 3) 0) (= (fb-mod num 5) 0)) 
                                    (fb-write-line 'fizzbuzz)
                                        (if (= (fb-mod num 3) 0)
                                            (fb-write-line 'fizz)
                                            (if (= (fb-mod num 5) 0)
                                                (fb-write-line 'buzz)
                                                (fb-write-line num))))))
                (define fb-upto
                        (lambda (counter)
                                (begin
                                    (fb-check counter)
                                    (if (< counter x)
                                        (fb-upto (+ counter 1))
                                        (= 1 1)))))
                (fb-upto 1)))
