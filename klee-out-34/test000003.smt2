(set-logic QF_AUFBV )
(declare-fun n () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  n (_ bv3 32) ) (concat  (select  n (_ bv2 32) ) (concat  (select  n (_ bv1 32) ) (select  n (_ bv0 32) ) ) ) ) ) ) (let ( (?B2 (bvsdiv  ?B1 (_ bv2 32) ) ) ) (let ( (?B3 (bvmul  ?B2 ?B2 ) ) (?B4 (bvsdiv  (bvadd  (_ bv4294967295 32) ?B2 ) (_ bv2 32) ) ) ) (and  (and  (and  (and  (bvsle  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv100 32) ) ) (=  false (=  ?B3 ?B1 ) ) ) (=  false (bvslt  ?B3 ?B1 ) ) ) (=  (bvmul  ?B4 ?B4 ) ?B1 ) ) ) ) ) )
(check-sat)
(exit)
