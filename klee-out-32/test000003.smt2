(set-logic QF_AUFBV )
(declare-fun x () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  x (_ bv3 32) ) (concat  (select  x (_ bv2 32) ) (concat  (select  x (_ bv1 32) ) (select  x (_ bv0 32) ) ) ) ) ) ) (and  (=  false (bvslt  (_ bv0 32) ?B1 ) ) (bvslt  ?B1 (_ bv0 32) ) ) ) )
(check-sat)
(exit)
