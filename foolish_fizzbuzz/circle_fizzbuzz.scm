#!/usr/bin/env gosh

(define (main args)
  (car (cdr args)))

(define fzlist
  '#0=(#f #f "fizz" #f "buzz" "fizz" #f
	  #f "fizz" "buzz" #f "fizz" #f
	  #f "fizzbuzz" . #0#))

(define cdr_num
  (lambda (num list)
    (cond
     ((= num 1) list)
     (else
      (cdr_num (- num 1)
	       (cdr list))))))

(define fz
  (lambda (num list)
    (cond
     ((eq? (car
	    (cdr_num num fzlist))
	   #f) num)
     (else
      (car (cdr_num num fzlist))))))

(define first 0)

(define fizzbuzz
  (lambda (num)
    (cond
     ((zero? num) #t)
     (else
      (set! first (+ first 1))
      (print (fz first fzlist))
      (fizzbuzz (- num 1))))))

(fizzbuzz (string->number (car *argv*)))
