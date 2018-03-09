#lang typed/racket

(module data/interval-map typed/racket
  (provide make-interval-map
           interval-map-set!
           interval-map-ref
           IntervalMap)
  (require typed/racket/unsafe)
  
  (define-type (IntervalMap A) Any)
  
  (unsafe-require/typed data/interval-map
    [ make-interval-map (All (A) (-> (IntervalMap A)))]
    [ interval-map-set! (All (A) (-> (IntervalMap A) Integer Integer A Void))]
    [ interval-map-ref  (All (A) (-> (IntervalMap A) Integer A))]
    ))

(module json typed/racket
  (provide jsexpr->string)
  
  (require/typed json
    [ jsexpr->string (-> Any String)]
    ))