(set-logic QF_AUFBV )
(declare-fun n () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  n (_ bv3 32) ) (concat  (select  n (_ bv2 32) ) (concat  (select  n (_ bv1 32) ) (select  n (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvsle  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv20 32) ) ) (bvsle  (_ bv1 32) ?B1 ) ) (bvsle  (_ bv2 32) ?B1 ) ) (bvsle  (_ bv3 32) ?B1 ) ) (bvsle  (_ bv4 32) ?B1 ) ) (bvsle  (_ bv5 32) ?B1 ) ) (bvsle  (_ bv6 32) ?B1 ) ) (bvsle  (_ bv7 32) ?B1 ) ) (bvsle  (_ bv8 32) ?B1 ) ) (=  false (bvsle  (_ bv9 32) ?B1 ) ) ) ) )
(check-sat)
(exit)
