;;;; mchello.lisp

(in-package #:mchello)

(define-application-frame mchelloapp ()
  ()
  (:pointer-documentation t)
  (:panes
   (app :application :display-time nil :height 400 :width 600)
   (int :interactor :height 200 :width 600))
  (:layouts
   (default (vertically () app int))))

(defun app-main ()
  (run-frame-top-level (make-application-frame 'mchelloapp)))

(define-mchelloapp-command (com-quit :name t) ()
  (frame-exit *application-frame*))

(define-mchelloapp-command (com-parity :name t) ((number 'integer))
  (format t "~a is ~a~%" number (if (oddp number) "odd" "even")))

(define-mchelloapp-command (com-say :name t) ((what-to-say 'string))
  (format t "~a~%" what-to-say))
