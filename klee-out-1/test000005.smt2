(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (bvsle  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv10 32) ) ) (=  false (bvsle  ?B1 (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967295 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967294 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967293 32) ?B1 ) (_ bv0 32) ) ) ) (bvsle  (bvadd  (_ bv4294967292 32) ?B1 ) (_ bv0 32) ) ) ) )
(check-sat)
(exit)
