(set-logic QF_AUFBV )
(declare-fun x () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  x (_ bv3 32) ) (concat  (select  x (_ bv2 32) ) (concat  (select  x (_ bv1 32) ) (select  x (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvsle  (_ bv1 32) ?B1 ) (bvsle  ?B1 (_ bv20 32) ) ) (=  false (bvsle  ?B1 (_ bv1 32) ) ) ) (=  false (bvsle  ?B1 (_ bv2 32) ) ) ) (=  false (bvsle  ?B1 (_ bv3 32) ) ) ) (=  false (bvsle  ?B1 (_ bv4 32) ) ) ) (=  false (bvsle  ?B1 (_ bv5 32) ) ) ) (=  false (bvsle  ?B1 (_ bv6 32) ) ) ) (=  false (bvsle  ?B1 (_ bv7 32) ) ) ) (=  false (bvsle  ?B1 (_ bv8 32) ) ) ) (=  false (bvsle  ?B1 (_ bv9 32) ) ) ) (=  false (bvsle  ?B1 (_ bv10 32) ) ) ) (=  false (bvsle  ?B1 (_ bv11 32) ) ) ) (=  false (bvsle  ?B1 (_ bv12 32) ) ) ) (=  false (bvsle  ?B1 (_ bv13 32) ) ) ) (=  false (bvsle  ?B1 (_ bv14 32) ) ) ) (=  false (bvsle  ?B1 (_ bv15 32) ) ) ) (bvsle  ?B1 (_ bv16 32) ) ) ) )
(check-sat)
(exit)
