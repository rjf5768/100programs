(set-logic QF_AUFBV )
(declare-fun x () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun y () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun z () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  z (_ bv3 32) ) (concat  (select  z (_ bv2 32) ) (concat  (select  z (_ bv1 32) ) (select  z (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  y (_ bv3 32) ) (concat  (select  y (_ bv2 32) ) (concat  (select  y (_ bv1 32) ) (select  y (_ bv0 32) ) ) ) ) ) (?B3 (concat  (select  x (_ bv3 32) ) (concat  (select  x (_ bv2 32) ) (concat  (select  x (_ bv1 32) ) (select  x (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (bvsle  (_ bv4294967291 32) ?B3 ) (bvsle  ?B3 (_ bv5 32) ) ) (bvsle  (_ bv4294967291 32) ?B2 ) ) (bvsle  ?B2 (_ bv5 32) ) ) (bvsle  (_ bv4294967291 32) ?B1 ) ) (bvsle  ?B1 (_ bv5 32) ) ) (=  (_ bv0 32) (bvmul  (bvmul  ?B3 ?B2 ) ?B1 ) ) ) ) )
(check-sat)
(exit)
