(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (let ( (?B3 (bvsrem  ?B2 ?B1 ) ) ) (and  (and  (and  (and  (and  (and  (bvslt  (_ bv0 32) ?B2 ) (bvslt  (_ bv0 32) ?B1 ) ) (bvsle  ?B2 (_ bv100 32) ) ) (bvsle  ?B1 (_ bv100 32) ) ) (=  false (=  (_ bv0 32) ?B3 ) ) ) (=  (_ bv0 32) (bvsrem  ?B1 ?B3 ) ) ) (=  false (=  (_ bv1 32) ?B3 ) ) ) ) ) )
(check-sat)
(exit)
