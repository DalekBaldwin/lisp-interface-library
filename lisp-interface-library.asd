;;; -*- Mode: Lisp ; Base: 10 ; Syntax: ANSI-Common-Lisp -*-
(defsystem :lisp-interface-library
  :description "LIL: abstract interfaces and supporting concrete data structures"
  :long-description "LIL is a collection of mostly pure data structures in interface-passing-style.
See http://fare.livejournal.com/155094.html regarding interface-passing-style."
  :depends-on (:interface :pure-data-structures))

(defmethod perform ((op test-op) (system (eql (find-system :lisp-interface-library))))
  (asdf:load-system :lisp-interface-library)
  (funcall (read-from-string "lisp-interface-library-test:test-suite")))
