(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun c () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  c (_ bv3 32) ) (concat  (select  c (_ bv2 32) ) (concat  (select  c (_ bv1 32) ) (select  c (_ bv0 32) ) ) ) ) ) (?B3 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (let ( (?B4 (bvmul  ?B3 ?B3 ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (bvsle  (_ bv4294967246 32) ?B3 ) (bvsle  ?B3 (_ bv50 32) ) ) (bvsle  (_ bv4294967246 32) ?B1 ) ) (bvsle  ?B1 (_ bv50 32) ) ) (bvsle  (_ bv4294967246 32) ?B2 ) ) (bvsle  ?B2 (_ bv50 32) ) ) (=  false (bvslt  (bvadd  ?B4 (bvmul  ?B1 ?B1 ) ) (bvmul  ?B2 ?B2 ) ) ) ) (=  false (bvslt  (_ bv1000 32) (bvmul  (bvadd  (bvsub  ?B3 ?B1 ) ?B2 ) (bvsub  (bvadd  ?B3 ?B1 ) ?B2 ) ) ) ) ) (=  false (bvslt  (_ bv500 32) (bvsub  ?B4 (bvmul  ?B1 ?B2 ) ) ) ) ) ) ) )
(check-sat)
(exit)
