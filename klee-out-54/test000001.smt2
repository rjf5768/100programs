(set-logic QF_AUFBV )
(declare-fun b () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv0 32) (concat  (select  b (_ bv3 32) ) (concat  (select  b (_ bv2 32) ) (concat  (select  b (_ bv1 32) ) (select  b (_ bv0 32) ) ) ) ) ) )
(check-sat)
(exit)
