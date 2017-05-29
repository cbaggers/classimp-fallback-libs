;;;; assimp-fallback-libs.asd

(asdf:defsystem #:classimp-fallback-libs
  :description "Fallback libraries for assimp"
  :author "Chris Bagley (Baggers) <techsnuffle@gmail.com>"
  :license "BSD 2 Clause"
  :serial t
  :defsystem-depends-on (:assimp-fallback-libs)
  :depends-on (:classimp)
  :components ((:file "moot")))
