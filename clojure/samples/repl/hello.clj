(ns repl.hello)

(defn hello
  []
  (for [x '(H E L L O)] (println x))
)

(defn hello2
  []
  (map (fn([x] (println x) x)) '(H E L L O))
)

;; example
; => (require 'repl.hello)
; => (repl.hello/hello)
