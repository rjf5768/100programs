(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun c () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) ) (and  (=  false (bvslt  ?B1 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (=  false (bvslt  ?B1 (concat  (select  c (_ bv3 32) ) (concat  (select  c (_ bv2 32) ) (concat  (select  c (_ bv1 32) ) (select  c (_ bv0 32) ) ) ) ) ) ) ) ) )
(check-sat)
(exit)
