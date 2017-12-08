
;;; CCL path
;; In Opusmodus, or in a file in the "~/Opusmodus/Extensions" folder (replacing <userid> appropriately):
(setf (logical-pathname-translations "ccl") '((#P"ccl:**;*.*" #P"/Users/yuichkun/ccl/**/*.*")))

;; quicklisp setup
#-quicklisp
(let ((quicklisp-init
       (merge-pathnames "quicklisp/setup.lisp"
                        (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

;;; quicklisp howto
; To load a system, use: (ql:quickload "system-name")
; To find systems, use: (ql:system-apropos "term")

;;; examples:
;(ql:quickload "ieee-floats")
;(ql:quickload "osc")
