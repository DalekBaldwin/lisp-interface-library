;;; Interface Passing Style : Run
(defpackage :lil/interface/run
  (:use :cl)
  (:import-from :lil/interface/definition #:define-interface #:with-interface)
  (:import-from :lil/interface/base #:<type>)
  (:export #:<run>
	   #:run))

(in-package :lil/interface/run)

(define-interface <run> (<type>)
  ()
  (:abstract)
  (:generic> run (runable &rest args) (:in 1)))
