(set-logic QF_AUFBV )
(declare-fun x () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun y () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  y (_ bv3 32) ) (concat  (select  y (_ bv2 32) ) (concat  (select  y (_ bv1 32) ) (select  y (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  x (_ bv3 32) ) (concat  (select  x (_ bv2 32) ) (concat  (select  x (_ bv1 32) ) (select  x (_ bv0 32) ) ) ) ) ) ) (and  (bvsle  ?B1 ?B2 ) (bvslt  (bvadd  ?B2 ?B1 ) ?B2 ) ) ) )
(check-sat)
(exit)
