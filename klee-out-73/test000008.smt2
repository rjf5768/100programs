(set-logic QF_AUFBV )
(declare-fun u () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun v () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun w () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  u (_ bv3 32) ) (concat  (select  u (_ bv2 32) ) (concat  (select  u (_ bv1 32) ) (select  u (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  v (_ bv3 32) ) (concat  (select  v (_ bv2 32) ) (concat  (select  v (_ bv1 32) ) (select  v (_ bv0 32) ) ) ) ) ) (?B3 (concat  (select  w (_ bv3 32) ) (concat  (select  w (_ bv2 32) ) (concat  (select  w (_ bv1 32) ) (select  w (_ bv0 32) ) ) ) ) ) ) (let ( (?B4 (bvmul  ?B1 ?B2 ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (bvsle  (_ bv4294967216 32) ?B1 ) (bvsle  ?B1 (_ bv80 32) ) ) (bvsle  (_ bv4294967216 32) ?B2 ) ) (bvsle  ?B2 (_ bv80 32) ) ) (bvsle  (_ bv4294967216 32) ?B3 ) ) (bvsle  ?B3 (_ bv80 32) ) ) (=  (_ bv6 32) (bvsrem  (bvadd  ?B4 ?B3 ) (_ bv15 32) ) ) ) (=  false (bvslt  ?B3 (bvadd  ?B1 ?B2 ) ) ) ) (=  false (=  (_ bv3 32) (bvsrem  (bvmul  ?B4 ?B3 ) (_ bv20 32) ) ) ) ) ) ) )
(check-sat)
(exit)
