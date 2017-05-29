(in-package #:assimp-fallback-libs)

(cl:pushnew (uiop:ensure-directory-pathname
             (asdf:system-relative-pathname :assimp-fallback-libs
                                            #+x86-64"lib64"
                                            #+x86"lib32"))
            cffi:*foreign-library-directories*)
