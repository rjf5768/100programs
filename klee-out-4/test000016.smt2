(set-logic QF_AUFBV )
(declare-fun k () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun n () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  (_ bv1 32) (concat  (select  k (_ bv3 32) ) (concat  (select  k (_ bv2 32) ) (concat  (select  k (_ bv1 32) ) (select  k (_ bv0 32) ) ) ) ) ) (=  (_ bv10 32) (concat  (select  n (_ bv3 32) ) (concat  (select  n (_ bv2 32) ) (concat  (select  n (_ bv1 32) ) (select  n (_ bv0 32) ) ) ) ) ) ) )
(check-sat)
(exit)
