(set-logic QF_AUFBV )
(declare-fun p () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun q () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun r () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  p (_ bv3 32) ) (concat  (select  p (_ bv2 32) ) (concat  (select  p (_ bv1 32) ) (select  p (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  r (_ bv3 32) ) (concat  (select  r (_ bv2 32) ) (concat  (select  r (_ bv1 32) ) (select  r (_ bv0 32) ) ) ) ) ) (?B3 (concat  (select  q (_ bv3 32) ) (concat  (select  q (_ bv2 32) ) (concat  (select  q (_ bv1 32) ) (select  q (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (bvsle  (_ bv4294967096 32) ?B1 ) (bvsle  ?B1 (_ bv200 32) ) ) (bvsle  (_ bv4294967096 32) ?B3 ) ) (bvsle  ?B3 (_ bv200 32) ) ) (bvsle  (_ bv4294967096 32) ?B2 ) ) (bvsle  ?B2 (_ bv200 32) ) ) (=  (_ bv0 32) (bvsrem  (bvsub  (bvmul  ?B1 ?B3 ) ?B2 ) (_ bv10 32) ) ) ) (=  false (bvslt  (bvadd  (bvadd  ?B1 ?B3 ) ?B2 ) (_ bv0 32) ) ) ) (bvslt  (_ bv500 32) (bvmul  (bvsub  ?B1 ?B2 ) (bvadd  ?B3 ?B2 ) ) ) ) ) )
(check-sat)
(exit)
