(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvsle  (_ bv0 32) ?B1 ) (bvsle  ?B1 (_ bv100 32) ) ) (=  false (bvsle  ?B1 (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967295 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967294 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967293 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967292 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967291 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967290 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967289 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967288 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967287 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967286 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967285 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967284 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967283 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967282 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967281 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967280 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967279 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967278 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967277 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967276 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967275 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967274 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967273 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967272 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967271 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967270 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967269 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967268 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967267 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967266 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967265 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967264 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967263 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967262 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967261 32) ?B1 ) (_ bv0 32) ) ) ) (=  false (bvsle  (bvadd  (_ bv4294967260 32) ?B1 ) (_ bv0 32) ) ) ) (bvsle  (bvadd  (_ bv4294967259 32) ?B1 ) (_ bv0 32) ) ) ) )
(check-sat)
(exit)
