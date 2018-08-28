(ns repl.sleeping-barber)

; Score
(def earnings (ref 0))

; Free Seats
(def max-seats (atom 3))
(def wating-count (ref 0))

; Barber
(def is-running (ref false))
(defn run []
  (when (not @is-running)
    (dosync (ref-set is-running true))
    (while (< 0 @wating-count)
      (dosync (alter wating-count - 1))
      (Thread/sleep 20)
      (when @is-open
        (dosync (alter earnings + 1))
      )
    )
    (dosync (ref-set is-running false))
  )
)
(defn call [] (future (run)))

; Customers
(defn visit []
  (when (< @wating-count @max-seats)
    (dosync (alter wating-count + 1))
    (call)
  )
)

; Shop
(def is-open (ref false))
(defn open []
  (println "open")
  (dosync (ref-set is-open true))
  (dosync (ref-set wating-count 0))
  (future
    (while @is-open
      (Thread/sleep (+ 10 (rand-int 21)))
      (visit)
    )
  )
)
(defn close []
  (println "close")
  (dosync (ref-set is-open false))
  (dosync (ref-set wating-count 0))
)

; Start
(def duration (atom (* 1 1000)))
(defn start []
  (dosync (ref-set earnings 0))
  
  (open)
  (Thread/sleep @duration)
  (close)

  (println (str "Score: " @earnings))
)

;; example
; => (require 'repl.sleeping_barber)
; => (repl.sleeping-barber/start)
