(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun c () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  c (_ bv3 32) ) (concat  (select  c (_ bv2 32) ) (concat  (select  c (_ bv1 32) ) (select  c (_ bv0 32) ) ) ) ) ) (?B3 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (bvsle  (_ bv0 32) ?B3 ) (bvsle  ?B3 (_ bv50 32) ) ) (bvsle  (_ bv0 32) ?B1 ) ) (bvsle  ?B1 (_ bv50 32) ) ) (bvsle  (_ bv0 32) ?B2 ) ) (bvsle  ?B2 (_ bv50 32) ) ) (bvslt  ?B1 ?B3 ) ) (=  false (bvslt  ?B2 ?B1 ) ) ) (bvslt  ?B1 ?B2 ) ) ) )
(check-sat)
(exit)
