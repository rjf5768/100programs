(set-logic QF_AUFBV )
(declare-fun step () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun steps () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  steps (_ bv3 32) ) (concat  (select  steps (_ bv2 32) ) (concat  (select  steps (_ bv1 32) ) (select  steps (_ bv0 32) ) ) ) ) ) ) (and  (and  (bvsle  (_ bv1 32) ?B1 ) (bvsle  ?B1 (_ bv50 32) ) ) (=  false (bvsle  (_ bv4294967295 32) (concat  (select  step (_ bv3 32) ) (concat  (select  step (_ bv2 32) ) (concat  (select  step (_ bv1 32) ) (select  step (_ bv0 32) ) ) ) ) ) ) ) ) )
(check-sat)
(exit)
