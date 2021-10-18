(defn big [st n] (> (count st) n))

(big "ian" 2)

(def ct-map {"class clojure.lang.PersistentList" :list "class clojure.lang.PersistentArrayMap" :map "class clojure.lang.PersistentVector" :vector})

(defn collection-type [col] (ct-map (str (class col))))
(collection-type [3 2 1])
