(set-logic QF_AUFBV )
(declare-fun n () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  n (_ bv3 32) ) (concat  (select  n (_ bv2 32) ) (concat  (select  n (_ bv1 32) ) (select  n (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (bvsle  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv12 32) ) ) (bvsle  (_ bv1 32) ?B1 ) ) (=  false (bvsle  (_ bv2 32) ?B1 ) ) ) ) )
(check-sat)
(exit)
