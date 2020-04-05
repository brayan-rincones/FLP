#lang eopl
(define is-zero?
  (lambda (n) (null? n)))

(define zero (lambda () '()))

(define successor
  (lambda (n)
    (if (is-zero? n) (cons 1 empty)
        (if (< (car n) 15)
            (cons (+ 1 (car n)) (cdr n))
            (cons 0 (successor (cdr n)))))))

(define predecessor
  (lambda (n)
    (if (is-zero? n)(eopl:error "sin predecesor")
        (if (and (= (car n) 1)(is-zero? (cdr n))) '()
            (if (and (= (car n) 1)(not (is-zero? (cdr n)))) (cons 0 (cdr n))
                (if (= (car n) 0)(cons 31 (predecessor (cdr n)))
                    (cons (- (car n) 1)(cdr n))))))))
