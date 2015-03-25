(in-package :defpackage+-user-1)

(defpackage+ :util.rpav-1
  (:use #:cl #:alexandria)
  (:inherit #:laconic)
  (:export

   ;; ppcre
   #:nth-scan

   ;; utility
   #:normalize #:do-hash
   ))

(in-package :util.rpav-1)

 ;; Variables

