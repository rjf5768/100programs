(set-logic QF_AUFBV )
(declare-fun w1 () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun w2 () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  w1 (_ bv3 32) ) (concat  (select  w1 (_ bv2 32) ) (concat  (select  w1 (_ bv1 32) ) (select  w1 (_ bv0 32) ) ) ) ) ) ) (and  (and  (bvsle  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv10 32) ) ) (=  false (bvsle  (_ bv0 32) (concat  (select  w2 (_ bv3 32) ) (concat  (select  w2 (_ bv2 32) ) (concat  (select  w2 (_ bv1 32) ) (select  w2 (_ bv0 32) ) ) ) ) ) ) ) ) )
(check-sat)
(exit)
