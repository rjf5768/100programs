(set-logic QF_AUFBV )
(declare-fun m () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (bvsle  (_ bv4294967176 32) (concat  (select  m (_ bv3 32) ) (concat  (select  m (_ bv2 32) ) (concat  (select  m (_ bv1 32) ) (select  m (_ bv0 32) ) ) ) ) ) ) )
(check-sat)
(exit)
