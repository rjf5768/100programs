(set-logic QF_AUFBV )
(declare-fun base () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun exp () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun mod () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  exp (_ bv3 32) ) (concat  (select  exp (_ bv2 32) ) (concat  (select  exp (_ bv1 32) ) (select  exp (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  mod (_ bv3 32) ) (concat  (select  mod (_ bv2 32) ) (concat  (select  mod (_ bv1 32) ) (select  mod (_ bv0 32) ) ) ) ) ) (?B3 (concat  (select  base (_ bv3 32) ) (concat  (select  base (_ bv2 32) ) (concat  (select  base (_ bv1 32) ) (select  base (_ bv0 32) ) ) ) ) ) ) (let ( (?B4 (bvsdiv  ?B1 (_ bv2 32) ) ) ) (let ( (?B5 (bvsdiv  ?B4 (_ bv2 32) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvslt  (_ bv1 32) ?B2 ) (bvsle  ?B2 (_ bv100 32) ) ) (bvsle  (_ bv0 32) ?B1 ) ) (bvsle  ?B1 (_ bv20 32) ) ) (bvsle  (_ bv0 32) ?B3 ) ) (bvslt  ?B3 ?B2 ) ) (bvslt  (_ bv0 32) ?B1 ) ) (=  (_ bv1 32) (bvsrem  ?B1 (_ bv2 32) ) ) ) (bvslt  (_ bv0 32) ?B4 ) ) (=  (_ bv1 32) (bvsrem  ?B4 (_ bv2 32) ) ) ) (bvslt  (_ bv0 32) ?B5 ) ) (=  false (=  (_ bv1 32) (bvsrem  ?B5 (_ bv2 32) ) ) ) ) (=  false (=  (_ bv1 32) (bvsrem  (bvsdiv  ?B5 (_ bv2 32) ) (_ bv2 32) ) ) ) ) ) ) ) )
(check-sat)
(exit)
