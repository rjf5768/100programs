(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun c () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun d () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  c (_ bv3 32) ) (concat  (select  c (_ bv2 32) ) (concat  (select  c (_ bv1 32) ) (select  c (_ bv0 32) ) ) ) ) ) (?B3 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (bvsle  (_ bv0 32) ?B3 ) (bvsle  ?B3 (_ bv100 32) ) ) (bvsle  (_ bv0 32) ?B1 ) ) (bvsle  ?B1 (_ bv100 32) ) ) (bvsle  (_ bv0 32) ?B2 ) ) (bvsle  ?B2 (_ bv100 32) ) ) (=  false (bvsle  (_ bv0 32) (concat  (select  d (_ bv3 32) ) (concat  (select  d (_ bv2 32) ) (concat  (select  d (_ bv1 32) ) (select  d (_ bv0 32) ) ) ) ) ) ) ) ) )
(check-sat)
(exit)
