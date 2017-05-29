;;;; assimp-fallback-libs.asd

(asdf:defsystem #:assimp-fallback-libs
  :description "Fallback libraries for assimp"
  :author "Chris Bagley (Baggers) <techsnuffle@gmail.com>"
  :license "BSD 2 Clause"
  :serial t
  :depends-on (:cffi)
  :components ((:file "package")
               (:file "library")))
