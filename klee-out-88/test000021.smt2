(set-logic QF_AUFBV )
(declare-fun n () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  n (_ bv3 32) ) (concat  (select  n (_ bv2 32) ) (concat  (select  n (_ bv1 32) ) (select  n (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvsle  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv100 32) ) ) (=  false (=  (_ bv0 32) ?B1 ) ) ) (=  false (=  (_ bv1 32) ?B1 ) ) ) (=  false (=  (_ bv4 32) ?B1 ) ) ) (=  false (bvslt  ?B1 (_ bv4 32) ) ) ) (=  false (=  (_ bv9 32) ?B1 ) ) ) (=  false (bvslt  ?B1 (_ bv9 32) ) ) ) (=  false (=  (_ bv16 32) ?B1 ) ) ) (=  false (bvslt  ?B1 (_ bv16 32) ) ) ) (=  false (=  (_ bv25 32) ?B1 ) ) ) (=  false (bvslt  ?B1 (_ bv25 32) ) ) ) (=  false (=  (_ bv36 32) ?B1 ) ) ) (=  false (bvslt  ?B1 (_ bv36 32) ) ) ) (=  false (=  (_ bv49 32) ?B1 ) ) ) (=  false (bvslt  ?B1 (_ bv49 32) ) ) ) (=  false (=  (_ bv64 32) ?B1 ) ) ) (=  false (bvslt  ?B1 (_ bv64 32) ) ) ) (=  false (=  (_ bv81 32) ?B1 ) ) ) (=  false (bvslt  ?B1 (_ bv81 32) ) ) ) (=  false (=  (_ bv100 32) ?B1 ) ) ) ) )
(check-sat)
(exit)
