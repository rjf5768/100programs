(set-logic QF_AUFBV )
(declare-fun op () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (bvsle  (_ bv0 32) (concat  (select  op (_ bv3 32) ) (concat  (select  op (_ bv2 32) ) (concat  (select  op (_ bv1 32) ) (select  op (_ bv0 32) ) ) ) ) ) ) )
(check-sat)
(exit)
