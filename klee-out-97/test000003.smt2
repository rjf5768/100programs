(set-logic QF_AUFBV )
(declare-fun step () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun steps () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  step (_ bv3 32) ) (concat  (select  step (_ bv2 32) ) (concat  (select  step (_ bv1 32) ) (select  step (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  steps (_ bv3 32) ) (concat  (select  steps (_ bv2 32) ) (concat  (select  steps (_ bv1 32) ) (select  steps (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (bvsle  (_ bv1 32) ?B2 ) (bvsle  ?B2 (_ bv10 32) ) ) (bvsle  (_ bv4294967295 32) ?B1 ) ) (bvsle  ?B1 (_ bv1 32) ) ) (=  false (bvslt  (_ bv1 32) ?B2 ) ) ) ) )
(check-sat)
(exit)
