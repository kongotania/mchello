;;;; mchello.asd

(asdf:defsystem #:mchello
  :description "Describe mchello here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:mcclim)
  :components ((:file "package")
               (:file "mchello")))
