(set-logic QF_AUFBV )
(declare-fun start () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (bvslt  (_ bv0 32) (concat  (select  start (_ bv3 32) ) (concat  (select  start (_ bv2 32) ) (concat  (select  start (_ bv1 32) ) (select  start (_ bv0 32) ) ) ) ) ) ) )
(check-sat)
(exit)
