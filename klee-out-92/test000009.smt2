(set-logic QF_AUFBV )
(declare-fun dividend () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun divisor () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  divisor (_ bv3 32) ) (concat  (select  divisor (_ bv2 32) ) (concat  (select  divisor (_ bv1 32) ) (select  divisor (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  dividend (_ bv3 32) ) (concat  (select  dividend (_ bv2 32) ) (concat  (select  dividend (_ bv1 32) ) (select  dividend (_ bv0 32) ) ) ) ) ) ) (let ( (?B3 (bvsub  ?B2 ?B1 ) ) ) (let ( (?B4 (bvsub  ?B3 ?B1 ) ) ) (let ( (?B5 (bvsub  ?B4 ?B1 ) ) ) (let ( (?B6 (bvsub  ?B5 ?B1 ) ) ) (let ( (?B7 (bvsub  ?B6 ?B1 ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvslt  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv100 32) ) ) (bvsle  (_ bv0 32) ?B2 ) ) (bvsle  ?B2 (_ bv1000 32) ) ) (bvsle  ?B1 ?B2 ) ) (bvsle  ?B1 ?B3 ) ) (bvsle  ?B1 ?B4 ) ) (bvsle  ?B1 ?B5 ) ) (bvsle  ?B1 ?B6 ) ) (bvsle  ?B1 ?B7 ) ) (=  false (bvsle  ?B1 (bvsub  ?B7 ?B1 ) ) ) ) ) ) ) ) ) ) )
(check-sat)
(exit)
