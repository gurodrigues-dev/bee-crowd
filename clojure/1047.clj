(defn calculate-time-difference [h1 m1 h2 m2]
  (let [hours (- h2 h1)
        mins (- m2 m1)
        hours (if (< mins 0) (- hours 1) hours)
        mins (if (< mins 0) (+ 60 mins) mins)
        hours (if (< hours 0) (+ 24 hours) hours)
        hours (if (and (= hours 0) (= mins 0)) 24 hours)]
    [hours mins]))

(defn -main []
  (let [input (clojure.string/split (read-line) #" ")
        [h1 m1 h2 m2] (mapv #(Integer. %) input)
        [hours mins] (calculate-time-difference h1 m1 h2 m2)]
    (println (str "O JOGO DUROU " hours " HORA(S) E " mins " MINUTO(S)"))))

(-main)