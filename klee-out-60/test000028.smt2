(set-logic QF_AUFBV )
(declare-fun n () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  n (_ bv3 32) ) (concat  (select  n (_ bv2 32) ) (concat  (select  n (_ bv1 32) ) (select  n (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvsle  (_ bv2 32) ?B1 ) (bvsle  ?B1 (_ bv50 32) ) ) (bvsle  (_ bv3 32) ?B1 ) ) (bvsle  (_ bv4 32) ?B1 ) ) (bvsle  (_ bv5 32) ?B1 ) ) (bvsle  (_ bv6 32) ?B1 ) ) (bvsle  (_ bv7 32) ?B1 ) ) (bvsle  (_ bv8 32) ?B1 ) ) (bvsle  (_ bv9 32) ?B1 ) ) (bvsle  (_ bv10 32) ?B1 ) ) (bvsle  (_ bv11 32) ?B1 ) ) (bvsle  (_ bv12 32) ?B1 ) ) (bvsle  (_ bv13 32) ?B1 ) ) (bvsle  (_ bv14 32) ?B1 ) ) (bvsle  (_ bv15 32) ?B1 ) ) (bvsle  (_ bv16 32) ?B1 ) ) (bvsle  (_ bv17 32) ?B1 ) ) (bvsle  (_ bv18 32) ?B1 ) ) (bvsle  (_ bv19 32) ?B1 ) ) (bvsle  (_ bv20 32) ?B1 ) ) (bvsle  (_ bv21 32) ?B1 ) ) (bvsle  (_ bv22 32) ?B1 ) ) (bvsle  (_ bv23 32) ?B1 ) ) (bvsle  (_ bv24 32) ?B1 ) ) (bvsle  (_ bv25 32) ?B1 ) ) (bvsle  (_ bv26 32) ?B1 ) ) (bvsle  (_ bv27 32) ?B1 ) ) (bvsle  (_ bv28 32) ?B1 ) ) (=  false (bvsle  (_ bv29 32) ?B1 ) ) ) ) )
(check-sat)
(exit)
