;(defmacro unless [test body] (list 'if (list 'not test) body))

;(unless true "yik")
;(unless false "yak")

(defmacro unless [test body else] (list 'if (list 'not test) body else))

(unless true (println "yik") (println "no-yik"))
(unless false (println "yak") (println "no-yak"))