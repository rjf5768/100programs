(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (let ( (?B3 (bvsrem  ?B2 ?B1 ) ) ) (let ( (?B4 (bvsrem  ?B1 ?B3 ) ) ) (let ( (?B5 (bvsrem  ?B3 ?B4 ) ) ) (let ( (?B6 (bvsrem  ?B4 ?B5 ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvslt  (_ bv0 32) ?B2 ) (bvslt  (_ bv0 32) ?B1 ) ) (bvsle  ?B2 (_ bv100 32) ) ) (bvsle  ?B1 (_ bv100 32) ) ) (=  false (=  (_ bv0 32) ?B3 ) ) ) (=  false (=  (_ bv0 32) ?B4 ) ) ) (=  false (=  (_ bv0 32) ?B5 ) ) ) (=  false (=  (_ bv0 32) ?B6 ) ) ) (=  (_ bv0 32) (bvsrem  ?B6 (_ bv1 32) ) ) ) (=  (_ bv1 32) (bvsrem  ?B5 ?B6 ) ) ) ) ) ) ) ) )
(check-sat)
(exit)
