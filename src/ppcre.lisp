(in-package :util.rpav-1)

(defun nth-scan (n re string &key (start 0)
                 (end (length string)) sharedp)
  (multiple-value-bind (match regs)
      (ppcre:scan-to-strings re string
                             :start start
                             :end end
                             :sharedp sharedp)
    (when match
      (when (< n (length regs))
        (elt regs n)))))
