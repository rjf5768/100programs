(set-logic QF_AUFBV )
(declare-fun dividend () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun divisor () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  divisor (_ bv3 32) ) (concat  (select  divisor (_ bv2 32) ) (concat  (select  divisor (_ bv1 32) ) (select  divisor (_ bv0 32) ) ) ) ) ) (?B2 (concat  (select  dividend (_ bv3 32) ) (concat  (select  dividend (_ bv2 32) ) (concat  (select  dividend (_ bv1 32) ) (select  dividend (_ bv0 32) ) ) ) ) ) ) (let ( (?B3 (bvsub  ?B2 ?B1 ) ) ) (let ( (?B4 (bvsub  ?B3 ?B1 ) ) ) (let ( (?B5 (bvsub  ?B4 ?B1 ) ) ) (let ( (?B6 (bvsub  ?B5 ?B1 ) ) ) (let ( (?B7 (bvsub  ?B6 ?B1 ) ) ) (let ( (?B8 (bvsub  ?B7 ?B1 ) ) ) (let ( (?B9 (bvsub  ?B8 ?B1 ) ) ) (let ( (?B10 (bvsub  ?B9 ?B1 ) ) ) (let ( (?B11 (bvsub  ?B10 ?B1 ) ) ) (let ( (?B12 (bvsub  ?B11 ?B1 ) ) ) (let ( (?B13 (bvsub  ?B12 ?B1 ) ) ) (let ( (?B14 (bvsub  ?B13 ?B1 ) ) ) (let ( (?B15 (bvsub  ?B14 ?B1 ) ) ) (let ( (?B16 (bvsub  ?B15 ?B1 ) ) ) (let ( (?B17 (bvsub  ?B16 ?B1 ) ) ) (let ( (?B18 (bvsub  ?B17 ?B1 ) ) ) (let ( (?B19 (bvsub  ?B18 ?B1 ) ) ) (let ( (?B20 (bvsub  ?B19 ?B1 ) ) ) (let ( (?B21 (bvsub  ?B20 ?B1 ) ) ) (let ( (?B22 (bvsub  ?B21 ?B1 ) ) ) (let ( (?B23 (bvsub  ?B22 ?B1 ) ) ) (let ( (?B24 (bvsub  ?B23 ?B1 ) ) ) (let ( (?B25 (bvsub  ?B24 ?B1 ) ) ) (let ( (?B26 (bvsub  ?B25 ?B1 ) ) ) (let ( (?B27 (bvsub  ?B26 ?B1 ) ) ) (let ( (?B28 (bvsub  ?B27 ?B1 ) ) ) (let ( (?B29 (bvsub  ?B28 ?B1 ) ) ) (let ( (?B30 (bvsub  ?B29 ?B1 ) ) ) (let ( (?B31 (bvsub  ?B30 ?B1 ) ) ) (let ( (?B32 (bvsub  ?B31 ?B1 ) ) ) (let ( (?B33 (bvsub  ?B32 ?B1 ) ) ) (let ( (?B34 (bvsub  ?B33 ?B1 ) ) ) (let ( (?B35 (bvsub  ?B34 ?B1 ) ) ) (let ( (?B36 (bvsub  ?B35 ?B1 ) ) ) (let ( (?B37 (bvsub  ?B36 ?B1 ) ) ) (let ( (?B38 (bvsub  ?B37 ?B1 ) ) ) (let ( (?B39 (bvsub  ?B38 ?B1 ) ) ) (let ( (?B40 (bvsub  ?B39 ?B1 ) ) ) (let ( (?B41 (bvsub  ?B40 ?B1 ) ) ) (let ( (?B42 (bvsub  ?B41 ?B1 ) ) ) (let ( (?B43 (bvsub  ?B42 ?B1 ) ) ) (let ( (?B44 (bvsub  ?B43 ?B1 ) ) ) (let ( (?B45 (bvsub  ?B44 ?B1 ) ) ) (let ( (?B46 (bvsub  ?B45 ?B1 ) ) ) (let ( (?B47 (bvsub  ?B46 ?B1 ) ) ) (let ( (?B48 (bvsub  ?B47 ?B1 ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvslt  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv100 32) ) ) (bvsle  (_ bv0 32) ?B2 ) ) (bvsle  ?B2 (_ bv1000 32) ) ) (bvsle  ?B1 ?B2 ) ) (bvsle  ?B1 ?B3 ) ) (bvsle  ?B1 ?B4 ) ) (bvsle  ?B1 ?B5 ) ) (bvsle  ?B1 ?B6 ) ) (bvsle  ?B1 ?B7 ) ) (bvsle  ?B1 ?B8 ) ) (bvsle  ?B1 ?B9 ) ) (bvsle  ?B1 ?B10 ) ) (bvsle  ?B1 ?B11 ) ) (bvsle  ?B1 ?B12 ) ) (bvsle  ?B1 ?B13 ) ) (bvsle  ?B1 ?B14 ) ) (bvsle  ?B1 ?B15 ) ) (bvsle  ?B1 ?B16 ) ) (bvsle  ?B1 ?B17 ) ) (bvsle  ?B1 ?B18 ) ) (bvsle  ?B1 ?B19 ) ) (bvsle  ?B1 ?B20 ) ) (bvsle  ?B1 ?B21 ) ) (bvsle  ?B1 ?B22 ) ) (bvsle  ?B1 ?B23 ) ) (bvsle  ?B1 ?B24 ) ) (bvsle  ?B1 ?B25 ) ) (bvsle  ?B1 ?B26 ) ) (bvsle  ?B1 ?B27 ) ) (bvsle  ?B1 ?B28 ) ) (bvsle  ?B1 ?B29 ) ) (bvsle  ?B1 ?B30 ) ) (bvsle  ?B1 ?B31 ) ) (bvsle  ?B1 ?B32 ) ) (bvsle  ?B1 ?B33 ) ) (bvsle  ?B1 ?B34 ) ) (bvsle  ?B1 ?B35 ) ) (bvsle  ?B1 ?B36 ) ) (bvsle  ?B1 ?B37 ) ) (bvsle  ?B1 ?B38 ) ) (bvsle  ?B1 ?B39 ) ) (bvsle  ?B1 ?B40 ) ) (bvsle  ?B1 ?B41 ) ) (bvsle  ?B1 ?B42 ) ) (bvsle  ?B1 ?B43 ) ) (bvsle  ?B1 ?B44 ) ) (bvsle  ?B1 ?B45 ) ) (bvsle  ?B1 ?B46 ) ) (bvsle  ?B1 ?B47 ) ) (bvsle  ?B1 ?B48 ) ) (=  false (bvsle  ?B1 (bvsub  ?B48 ?B1 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
(check-sat)
(exit)
