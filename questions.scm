(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

; Some utility functions that you may find useful to implement.

(define (cons-all first rests)
  (map (lambda (n) (append (list first) n)) rests))

(define (zip pairs)
  (define first (map car pairs))
  (define second (map cadr pairs))
  (cons first (cons second '()))
)

;; Problem 16
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 16
  (define (helper i s)
    (if (null? s)
      nil
      (cons (list i (car s)) (helper (+ i 1) (cdr s)))
    )     
  )
  (helper 0 s)
)
  ; END PROBLEM 16

;; Problem 17
;; List all ways to make change for TOTAL with DENOMS
(define (list-change total denoms)
  ; BEGIN PROBLEM 17
  (cond 
    ((null? denoms) nil)
    ((= total 0) (cons nil nil))
    ((> (car denoms) total) (list-change total (cdr denoms)))
    (else (append 
      (cons-all (car denoms) (list-change (- total (car denoms)) denoms ))
      (list-change total (cdr denoms))))


  )
  
)



  ; END PROBLEM 17

;; Problem 18
;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN PROBLEM 18
         expr
         ; END PROBLEM 18
         )
        ((quoted? expr)
         ; BEGIN PROBLEM 18
         expr
         ; END PROBLEM 18
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 18
           (cons form (cons (map let-to-lambda params) (map let-to-lambda body)))
           ; END PROBLEM5 18
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 18
           (cons (cons 'lambda (cons (car (zip (let-to-lambda values))) (let-to-lambda body)))
                 (cadr (zip (let-to-lambda values))))

           ; END PROBLEM 18
           ))
        (else
         ; BEGIN PROBLEM 18
         (map let-to-lambda expr)
         ; END PROBLEM 18
         )))
