(set-logic QF_AUFBV )
(declare-fun flag () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun iterations () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  iterations (_ bv3 32) ) (concat  (select  iterations (_ bv2 32) ) (concat  (select  iterations (_ bv1 32) ) (select  iterations (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (=  (_ bv0 32) (concat  (select  flag (_ bv3 32) ) (concat  (select  flag (_ bv2 32) ) (concat  (select  flag (_ bv1 32) ) (select  flag (_ bv0 32) ) ) ) ) ) (bvsle  (_ bv1 32) ?B1 ) ) (bvsle  ?B1 (_ bv100 32) ) ) (bvslt  (_ bv1 32) ?B1 ) ) (bvslt  (_ bv2 32) ?B1 ) ) (bvslt  (_ bv3 32) ?B1 ) ) (bvslt  (_ bv4 32) ?B1 ) ) (bvslt  (_ bv5 32) ?B1 ) ) (bvslt  (_ bv6 32) ?B1 ) ) (bvslt  (_ bv7 32) ?B1 ) ) (bvslt  (_ bv8 32) ?B1 ) ) (bvslt  (_ bv9 32) ?B1 ) ) (bvslt  (_ bv10 32) ?B1 ) ) (bvslt  (_ bv11 32) ?B1 ) ) (bvslt  (_ bv12 32) ?B1 ) ) (bvslt  (_ bv13 32) ?B1 ) ) (bvslt  (_ bv14 32) ?B1 ) ) (bvslt  (_ bv15 32) ?B1 ) ) (bvslt  (_ bv16 32) ?B1 ) ) (bvslt  (_ bv17 32) ?B1 ) ) (bvslt  (_ bv18 32) ?B1 ) ) (bvslt  (_ bv19 32) ?B1 ) ) (bvslt  (_ bv20 32) ?B1 ) ) (bvslt  (_ bv21 32) ?B1 ) ) (bvslt  (_ bv22 32) ?B1 ) ) (bvslt  (_ bv23 32) ?B1 ) ) (bvslt  (_ bv24 32) ?B1 ) ) (bvslt  (_ bv25 32) ?B1 ) ) (bvslt  (_ bv26 32) ?B1 ) ) (bvslt  (_ bv27 32) ?B1 ) ) (bvslt  (_ bv28 32) ?B1 ) ) (bvslt  (_ bv29 32) ?B1 ) ) (bvslt  (_ bv30 32) ?B1 ) ) (bvslt  (_ bv31 32) ?B1 ) ) (bvslt  (_ bv32 32) ?B1 ) ) (bvslt  (_ bv33 32) ?B1 ) ) (bvslt  (_ bv34 32) ?B1 ) ) (bvslt  (_ bv35 32) ?B1 ) ) (bvslt  (_ bv36 32) ?B1 ) ) (bvslt  (_ bv37 32) ?B1 ) ) (bvslt  (_ bv38 32) ?B1 ) ) (bvslt  (_ bv39 32) ?B1 ) ) (bvslt  (_ bv40 32) ?B1 ) ) (bvslt  (_ bv41 32) ?B1 ) ) (bvslt  (_ bv42 32) ?B1 ) ) (bvslt  (_ bv43 32) ?B1 ) ) (bvslt  (_ bv44 32) ?B1 ) ) (bvslt  (_ bv45 32) ?B1 ) ) (bvslt  (_ bv46 32) ?B1 ) ) (bvslt  (_ bv47 32) ?B1 ) ) (bvslt  (_ bv48 32) ?B1 ) ) (bvslt  (_ bv49 32) ?B1 ) ) (bvslt  (_ bv50 32) ?B1 ) ) (bvslt  (_ bv51 32) ?B1 ) ) (bvslt  (_ bv52 32) ?B1 ) ) (bvslt  (_ bv53 32) ?B1 ) ) (bvslt  (_ bv54 32) ?B1 ) ) (bvslt  (_ bv55 32) ?B1 ) ) (bvslt  (_ bv56 32) ?B1 ) ) (bvslt  (_ bv57 32) ?B1 ) ) (bvslt  (_ bv58 32) ?B1 ) ) (bvslt  (_ bv59 32) ?B1 ) ) (bvslt  (_ bv60 32) ?B1 ) ) (bvslt  (_ bv61 32) ?B1 ) ) (bvslt  (_ bv62 32) ?B1 ) ) (bvslt  (_ bv63 32) ?B1 ) ) (bvslt  (_ bv64 32) ?B1 ) ) (bvslt  (_ bv65 32) ?B1 ) ) (bvslt  (_ bv66 32) ?B1 ) ) (bvslt  (_ bv67 32) ?B1 ) ) (bvslt  (_ bv68 32) ?B1 ) ) (bvslt  (_ bv69 32) ?B1 ) ) (bvslt  (_ bv70 32) ?B1 ) ) (bvslt  (_ bv71 32) ?B1 ) ) (bvslt  (_ bv72 32) ?B1 ) ) (bvslt  (_ bv73 32) ?B1 ) ) (bvslt  (_ bv74 32) ?B1 ) ) (bvslt  (_ bv75 32) ?B1 ) ) (bvslt  (_ bv76 32) ?B1 ) ) (bvslt  (_ bv77 32) ?B1 ) ) (bvslt  (_ bv78 32) ?B1 ) ) (bvslt  (_ bv79 32) ?B1 ) ) (bvslt  (_ bv80 32) ?B1 ) ) (=  false (bvslt  (_ bv81 32) ?B1 ) ) ) ) )
(check-sat)
(exit)
