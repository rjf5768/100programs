(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun transitions () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  transitions (_ bv3 32) ) (concat  (select  transitions (_ bv2 32) ) (concat  (select  transitions (_ bv1 32) ) (select  transitions (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (bvsle  (_ bv1 32) ?B1 ) (bvsle  ?B1 (_ bv20 32) ) ) (=  (_ bv0 32) (bvsrem  (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) (_ bv3 32) ) ) ) (bvslt  (_ bv1 32) ?B1 ) ) (bvslt  (_ bv2 32) ?B1 ) ) (bvslt  (_ bv3 32) ?B1 ) ) (=  false (bvslt  (_ bv4 32) ?B1 ) ) ) ) )
(check-sat)
(exit)
