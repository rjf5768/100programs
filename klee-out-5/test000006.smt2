(set-logic QF_AUFBV )
(declare-fun base () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun exp () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  base (_ bv3 32) ) (concat  (select  base (_ bv2 32) ) (concat  (select  base (_ bv1 32) ) (select  base (_ bv0 32) ) ) ) ) ) ) (and  (and  (bvsle  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv10 32) ) ) (=  (_ bv3 32) (concat  (select  exp (_ bv3 32) ) (concat  (select  exp (_ bv2 32) ) (concat  (select  exp (_ bv1 32) ) (select  exp (_ bv0 32) ) ) ) ) ) ) ) )
(check-sat)
(exit)
