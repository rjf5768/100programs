(set-logic QF_AUFBV )
(declare-fun p () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun q () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  p (_ bv3 32) ) (concat  (select  p (_ bv2 32) ) (concat  (select  p (_ bv1 32) ) (select  p (_ bv0 32) ) ) ) ) ) ) (and  (and  (bvsle  (_ bv4294967096 32) ?B1 ) (bvsle  ?B1 (_ bv200 32) ) ) (=  false (bvsle  (_ bv4294967096 32) (concat  (select  q (_ bv3 32) ) (concat  (select  q (_ bv2 32) ) (concat  (select  q (_ bv1 32) ) (select  q (_ bv0 32) ) ) ) ) ) ) ) ) )
(check-sat)
(exit)
