(set-logic QF_AUFBV )
(declare-fun n () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  n (_ bv3 32) ) (concat  (select  n (_ bv2 32) ) (concat  (select  n (_ bv1 32) ) (select  n (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvsle  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv20 32) ) ) (bvslt  (_ bv0 32) ?B1 ) ) (bvslt  (_ bv1 32) ?B1 ) ) (bvslt  (_ bv2 32) ?B1 ) ) (bvslt  (_ bv3 32) ?B1 ) ) (bvslt  (_ bv4 32) ?B1 ) ) (bvslt  (_ bv5 32) ?B1 ) ) (bvslt  (_ bv6 32) ?B1 ) ) (bvslt  (_ bv7 32) ?B1 ) ) (bvslt  (_ bv8 32) ?B1 ) ) (bvslt  (_ bv9 32) ?B1 ) ) (bvslt  (_ bv10 32) ?B1 ) ) (bvslt  (_ bv11 32) ?B1 ) ) (bvslt  (_ bv12 32) ?B1 ) ) (bvslt  (_ bv13 32) ?B1 ) ) (bvslt  (_ bv14 32) ?B1 ) ) (bvslt  (_ bv15 32) ?B1 ) ) (bvslt  (_ bv16 32) ?B1 ) ) (bvslt  (_ bv17 32) ?B1 ) ) (=  false (bvslt  (_ bv18 32) ?B1 ) ) ) ) )
(check-sat)
(exit)
