(defpackage :util.rpav.asdf
  (:use #:cl #:asdf))

(in-package :util.rpav.asdf)

(defsystem :util.rpav
  :description "rpav&#39;s utility functions"
  :author "Ryan Pavlik"
  :license "BSD"
  :version "0.0"

  :depends-on (:alexandria :laconic :defpackage-plus)
  :pathname "src"
  :serial t

  :components
  ((:file "package")
   (:file "ppcre")
   (:file "utility")))
