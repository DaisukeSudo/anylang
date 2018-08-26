(ns repl.recursive)

; (defn size [v]
;   (if (empty? v)
;     0
;     (inc (size (rest v)))
;   )
; )

(defn size [v]
  (loop [l v, c 0]
    (if (empty? l)
      c
      (recur (rest l) (inc c))
    )
  )
)


(defn fib-pair [[a b]] [b (+ a b)])

(defn fib [n]
  (nth
    (map first (iterate fib-pair[1 1]))
    (dec n)
  )
)


(defn fact [n]
  (apply * (take n (iterate inc 1)))
)


;; example
; => (require 'repl.recursive)
; => (in-ns 'repl.recursive)
; => (size [1 2 3])
; => (fib 10)
; => (fact 5)
