(set-logic QF_AUFBV )
(declare-fun n () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  n (_ bv3 32) ) (concat  (select  n (_ bv2 32) ) (concat  (select  n (_ bv1 32) ) (select  n (_ bv0 32) ) ) ) ) ) ) (let ( (?B2 (bvsdiv  ?B1 (_ bv10 32) ) ) ) (let ( (?B3 (bvsdiv  ?B2 (_ bv10 32) ) ) ) (let ( (?B4 (bvsdiv  ?B3 (_ bv10 32) ) ) ) (and  (and  (and  (and  (and  (and  (bvsle  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv10000 32) ) ) (bvslt  (_ bv0 32) ?B1 ) ) (bvslt  (_ bv0 32) ?B2 ) ) (bvslt  (_ bv0 32) ?B3 ) ) (bvslt  (_ bv0 32) ?B4 ) ) (bvslt  (_ bv0 32) (bvsdiv  ?B4 (_ bv10 32) ) ) ) ) ) ) ) )
(check-sat)
(exit)
