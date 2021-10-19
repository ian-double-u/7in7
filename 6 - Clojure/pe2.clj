;pe2

(defn fibs [[a b]] [b (+ a b)])
(defn lfm [x] (< x 4000000))

(reduce + (filter even? (take-while lfm (last (iterate fibs [1 1])))))

;logically it works - but gives 'integer overflow' error (+' does not fix it)
;other languages handle this abstraction...