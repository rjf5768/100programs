(set-logic QF_AUFBV )
(declare-fun n () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  n (_ bv3 32) ) (concat  (select  n (_ bv2 32) ) (concat  (select  n (_ bv1 32) ) (select  n (_ bv0 32) ) ) ) ) ) ) (let ( (?B2 (bvsdiv  ?B1 (_ bv2 32) ) ) ) (let ( (?B3 (bvsdiv  (bvadd  (_ bv1 32) (bvmul  (_ bv3 32) ?B2 ) ) (_ bv2 32) ) ) ) (let ( (?B4 (bvsdiv  ?B3 (_ bv2 32) ) ) ) (let ( (?B5 (bvsdiv  (bvadd  (_ bv1 32) (bvmul  (_ bv3 32) ?B4 ) ) (_ bv2 32) ) ) ) (let ( (?B6 (bvsdiv  ?B5 (_ bv2 32) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvslt  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv100 32) ) ) (=  false (=  (_ bv1 32) ?B1 ) ) ) (=  (_ bv0 32) (bvsrem  ?B1 (_ bv2 32) ) ) ) (=  false (=  (_ bv1 32) ?B2 ) ) ) (=  false (=  (_ bv0 32) (bvsrem  ?B2 (_ bv2 32) ) ) ) ) (=  (_ bv0 32) (bvsrem  ?B3 (_ bv2 32) ) ) ) (=  false (=  (_ bv0 32) (bvsrem  ?B4 (_ bv2 32) ) ) ) ) (=  (_ bv0 32) (bvsrem  ?B5 (_ bv2 32) ) ) ) (=  (_ bv0 32) (bvsrem  ?B6 (_ bv2 32) ) ) ) (=  (_ bv0 32) (bvsrem  (bvsdiv  ?B6 (_ bv2 32) ) (_ bv2 32) ) ) ) ) ) ) ) ) ) )
(check-sat)
(exit)
