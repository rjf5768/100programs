(set-logic QF_AUFBV )
(declare-fun flag () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun iterations () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  iterations (_ bv3 32) ) (concat  (select  iterations (_ bv2 32) ) (concat  (select  iterations (_ bv1 32) ) (select  iterations (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (=  (_ bv1 32) (concat  (select  flag (_ bv3 32) ) (concat  (select  flag (_ bv2 32) ) (concat  (select  flag (_ bv1 32) ) (select  flag (_ bv0 32) ) ) ) ) ) (bvsle  (_ bv1 32) ?B1 ) ) (bvsle  ?B1 (_ bv20 32) ) ) (bvslt  (_ bv1 32) ?B1 ) ) (bvslt  (_ bv2 32) ?B1 ) ) (=  false (bvslt  (_ bv3 32) ?B1 ) ) ) ) )
(check-sat)
(exit)
