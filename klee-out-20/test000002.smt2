(set-logic QF_AUFBV )
(declare-fun day () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun month () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  day (_ bv3 32) ) (concat  (select  day (_ bv2 32) ) (concat  (select  day (_ bv1 32) ) (select  day (_ bv0 32) ) ) ) ) ) ) (and  (and  (bvsle  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv40 32) ) ) (=  false (bvsle  (_ bv0 32) (concat  (select  month (_ bv3 32) ) (concat  (select  month (_ bv2 32) ) (concat  (select  month (_ bv1 32) ) (select  month (_ bv0 32) ) ) ) ) ) ) ) ) )
(check-sat)
(exit)
