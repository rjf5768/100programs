(set-logic QF_AUFBV )
(declare-fun base () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun exp () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  exp (_ bv3 32) ) (concat  (select  exp (_ bv2 32) ) (concat  (select  exp (_ bv1 32) ) (select  exp (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  base (_ bv3 32) ) (concat  (select  base (_ bv2 32) ) (concat  (select  base (_ bv1 32) ) (select  base (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvsle  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv10 32) ) ) (bvsle  (_ bv0 32) ?B2 ) ) (bvsle  ?B2 (_ bv10 32) ) ) (bvslt  (_ bv0 32) ?B1 ) ) (bvslt  (_ bv1 32) ?B1 ) ) (bvslt  (_ bv2 32) ?B1 ) ) (bvslt  (_ bv3 32) ?B1 ) ) (bvslt  (_ bv4 32) ?B1 ) ) (=  false (bvslt  (_ bv5 32) ?B1 ) ) ) ) )
(check-sat)
(exit)
