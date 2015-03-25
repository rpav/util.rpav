(in-package :util.rpav-1)

(defun normalize (a b &optional (less-than-fun #'<))
  (let ((a (if (funcall less-than-fun a b) a b))
        (b (if (funcall less-than-fun a b) b a)))
    (values a b)))

(defmacro do-hash ((k v &key sort-fun) table &body body)
  (if sort-fun
      (once-only (table)
        `(loop for ,k in (sort (hash-table-keys ,table) ,sort-fun)
               as ,v = (gethash ,k ,table)
               do ,@body))
      `(loop for ,k being each hash-key in ,table
               using (hash-value ,v)
             do ,@body)))
