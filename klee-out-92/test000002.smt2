(set-logic QF_AUFBV )
(declare-fun dividend () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun divisor () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  divisor (_ bv3 32) ) (concat  (select  divisor (_ bv2 32) ) (concat  (select  divisor (_ bv1 32) ) (select  divisor (_ bv0 32) ) ) ) ) ) ) (and  (and  (bvslt  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv100 32) ) ) (=  false (bvsle  (_ bv0 32) (concat  (select  dividend (_ bv3 32) ) (concat  (select  dividend (_ bv2 32) ) (concat  (select  dividend (_ bv1 32) ) (select  dividend (_ bv0 32) ) ) ) ) ) ) ) ) )
(check-sat)
(exit)
