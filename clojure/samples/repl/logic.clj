(ns repl.logic)

(defmacro unless [test exp1 exp2]
  (list 'if (list 'not test) exp1 exp2)
)

;; example
; => (require 'repl.logic)
; => (in-ns 'repl.logic)
; => (unless true  (println "OK") (println "NG"))
; => (unless false (println "OK") (println "NG"))
