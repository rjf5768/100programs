(set-logic QF_AUFBV )
(declare-fun n () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  n (_ bv3 32) ) (concat  (select  n (_ bv2 32) ) (concat  (select  n (_ bv1 32) ) (select  n (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (bvslt  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv100 32) ) ) (bvslt  (_ bv1 32) ?B1 ) ) (bvslt  (_ bv2 32) ?B1 ) ) (bvslt  (_ bv4 32) ?B1 ) ) (bvslt  (_ bv8 32) ?B1 ) ) (bvslt  (_ bv16 32) ?B1 ) ) (bvslt  (_ bv32 32) ?B1 ) ) (=  false (bvslt  (_ bv64 32) ?B1 ) ) ) ) )
(check-sat)
(exit)
