(set-logic QF_AUFBV )
(declare-fun op () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv42 8) (select  op (_ bv0 32) ) ) )
(check-sat)
(exit)
