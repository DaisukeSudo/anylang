(ns repl.compass)

; interface
(defprotocol Compass
  (direction [c])
  (left [c])
  (right [c])
)

; constant
(def directions [:north :east :south :west])

; function
(defn turn
  [base amount]
  (rem (+ base amount) (count directions))
)

; class ?
(defrecord SimpleCompass [bearing]
  Compass
  (direction [_] (directions bearing))
  (left  [_] (SimpleCompass. (turn bearing 3)))
  (right [_] (SimpleCompass. (turn bearing 1)))

  Object
  (toString [this] (str "[" (direction this) "]"))
)

;; example
; => (use 'repl.compass)
; => (in-ns 'repl.compass)
; => (def c (SimpleCompass. 0))
; => (left c)
; => (left (left c))
; => (:bearing c)
