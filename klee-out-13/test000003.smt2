(set-logic QF_AUFBV )
(declare-fun deposit () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun withdraw () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  withdraw (_ bv3 32) ) (concat  (select  withdraw (_ bv2 32) ) (concat  (select  withdraw (_ bv1 32) ) (select  withdraw (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  deposit (_ bv3 32) ) (concat  (select  deposit (_ bv2 32) ) (concat  (select  deposit (_ bv1 32) ) (select  deposit (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (bvsle  (_ bv0 32) ?B2 ) (bvsle  ?B2 (_ bv50 32) ) ) (bvsle  (_ bv0 32) ?B1 ) ) (bvsle  ?B1 (_ bv50 32) ) ) ) )
(check-sat)
(exit)
