(set-logic QF_AUFBV )
(declare-fun day () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun month () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  month (_ bv3 32) ) (concat  (select  month (_ bv2 32) ) (concat  (select  month (_ bv1 32) ) (select  month (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  day (_ bv3 32) ) (concat  (select  day (_ bv2 32) ) (concat  (select  day (_ bv1 32) ) (select  day (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (bvsle  (_ bv0 32) ?B2 ) (bvsle  ?B2 (_ bv40 32) ) ) (bvsle  (_ bv0 32) ?B1 ) ) (bvsle  ?B1 (_ bv15 32) ) ) (=  false (bvslt  ?B1 (_ bv1 32) ) ) ) (bvslt  (_ bv12 32) ?B1 ) ) ) )
(check-sat)
(exit)
