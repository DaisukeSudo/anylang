(ns repl.bank)

(defn append-account [accounts number balance] ; This can't make unique the key ...
  (dosync
    (alter
      accounts
      conj
      {
        :number   number
        :balance  balance
      }
    )
  )
)

(defn credit [accounts number ammount]
  (dosync
    (alter
      accounts
      (fn [accounts]
        (map
          (fn [account]
            (if (= (:number account) number)
              (assoc
                account
                :balance
                (+ (:balance account) ammount)
              )
              account
            )
          )
          accounts
        )
      )
    )
  )
)

(defn debit [accounts number ammount]
  (credit accounts number (- ammount))
)

;; example
; => (require 'repl.bank)
; => (def accounts (ref []))
; => (repl.bank/append-account accounts 123 1000)
; => (repl.bank/append-account accounts 456 2000)
; => (repl.bank/append-account accounts 789 3000)
; => (repl.bank/credit accounts 123 500)
; => (repl.bank/debit  accounts 789 500)
; => (println @accounts)
