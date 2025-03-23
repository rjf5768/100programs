(set-logic QF_AUFBV )
(declare-fun dividend () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun divisor () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  divisor (_ bv3 32) ) (concat  (select  divisor (_ bv2 32) ) (concat  (select  divisor (_ bv1 32) ) (select  divisor (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  dividend (_ bv3 32) ) (concat  (select  dividend (_ bv2 32) ) (concat  (select  dividend (_ bv1 32) ) (select  dividend (_ bv0 32) ) ) ) ) ) ) (let ( (?B3 (bvmul  (bvsdiv  ?B2 ?B1 ) ?B1 ) ) ) (and  (and  (=  false (=  (_ bv0 32) ?B1 ) ) (=  false (bvslt  ?B2 ?B3 ) ) ) (=  false (bvslt  ?B3 (bvadd  (_ bv1 32) (bvsub  ?B2 ?B1 ) ) ) ) ) ) ) )
(check-sat)
(exit)
