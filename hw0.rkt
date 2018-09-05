#lang racket

(provide hours
	 speed
	 hometown)

; Please do not modify the lines above this one.

; ********************************************************
; CS 201 HW #0  DUE Wednesday 9/12/18, 11:59 pm
; ** using the Zoo submit system **

; ********************************************************
; Name: Leah Xiao
; Email address: leah.xiao@yale.edu
; ********************************************************

; This file may be loaded into Racket.  Lines beginning with
; semicolons are comments.

; Homework #0 will be worth 20 points -- other homeworks will be worth
; 100 points.  One purpose of homework #0 is to make sure you can use
; the submit system on the Zoo.  You will receive no credit for this
; assignment until you successfully use the submit system to submit
; it.

; You will be submitting *two* files for homework #0.  Please name
; them: hw0.rkt (for the Racket definitions and procedures)
; response.pdf (for the reading response)

; ********************************************************
; ** problem 0 ** (1 easy point) 

; Replace the number 0 in the definition below to indicate how many
; hours you spent doing this assignment.  Fractions are fine, eg,
; 3.14159.  You will receive no credit for this problem if you leave
; the number as 0.

(define hours .1)

; ********************************************************
; ** problem 1 ** (5 points)

; Write a procedure (speed v0 t)

; One of Newton’s Laws of Motion is V = V0 + at, where V is velocity,
; V0 is the initial velocity, a is acceleration, and t is the time of
; travel.  Write a racket function which calculates the velocity of a
; moving object given its initial velocity, v0, and the time of
; travel, t.  Speed is in feet per second, time is in seconds, and
; acceleration is 32 feet per second^2.

; Examples

; (speed 0 1) => 32
; (speed 1 1.6) => 52.2
; (speed 2 5) => 162
; (speed -10 10) => 310

; ********************************************************

; Replace this comment and the code below with your procedure.  Make
; sure it is named speed and has two arguments.  The names of the
; arguments are not important.

; Your procedure will be tested automatically with two numeric
; arguments.

(define (speed v0 t)

 (+ v0 (* 32 t))
  
  )


; ********************************************************
; ** problem 2 ** (4 points)

; Write a procedure (hometown) that takes no arguments and returns a
; *string* indicating the name of your hometown.

; Please remember the difference between a procedure call and the
; evaluation of a variable!

; Example (yours will likely be different)

; (hometown) => "New Haven"

; ********************************************************

; Replace this comment and the code below with your procedure.  Make
; sure it is named hometown and takes no arguments.  Your procedure
; will be tested automatically, and will be called only with no
; arguments.

(define (hometown)
  "Webster"
  )

; ********************************************************
; ** problem 3 ** (10 points)

; For this problem, you are asked to find one article (of 2 pages or
; more) in the magazine "Communications of the ACM", in one of the
; issues: July, August, September 2018 See http://cacm.acm.org/

; read the article and answer the following three questions:

;   a. What did you know about the topic
;      prior to reading the article?
;      
;   b. What did you learn from reading the
;      article? 
;   c. What more would you like to know
;      about the topic?

; Your answer should be AT MOST 2 pages saved in pdf format, and
; submitted as the file response.pdf for assignment 0.  Please include
; in your file your name and email address and the title and author(s)
; of the article you are responding to.

; Your grade for this problem will be 10 if we can open, print and read
; your submitted pdf file.  It is to help us get acquainted with you
; and your interests -- you won't receive feedback on your answers.

; ********************************************************
; ********  testing, testing. 1, 2, 3 ....
; ********************************************************

(define *testing-flag* #t)

(define (test name got expected)
  (cond (*testing-flag*
	 (let* ((expected (if (procedure? expected)
			      (if (expected got) 'OK-TEST
				  'FAILED-TEST)
			      expected))
		(prefix (if (equal? got expected)
			    'OK
			    'X)))
	   (list 'testing name prefix 'got: got 'expected: expected)))))

(test 'hours hours (lambda (x) (> x 0)))
(test 'speed (speed 0 1) 32)
(test 'speed (speed 1 1.6) 52.2)
(test 'speed (speed 2 5) 162)
(test 'speed (speed -10 10) 310)
(test 'hometown (hometown) (lambda (x) (string? x)))

; ********************************************************
; ********  end of homework #0
; ********************************************************
