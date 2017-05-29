(in-package #:%open-asset-import-library)

(cl:pushnew (uiop:ensure-directory-pathname
             (asdf:system-relative-pathname :assimp-fallback-libs "lib"))
            cffi:*foreign-library-directories*)

(define-foreign-library assimp
  (:darwin (:or "libassimp.dylib"
                #+X86-64 "fallback_x64_assimp.dylib"))
  (:unix (:or "libassimp.so.3"
              "libassimp3.0.so"
              "libassimp.so"
              #+X86-64 "fallback_x64_assimp.so"))
  (:windows (:or "assimp.dll"
                 "libassimp.dll"
                 #+X86 "fallback_x86_assimp.dll"
                 #+X86-64 "fallback_x64_assimp.dll"))
  (t (:default "assimp.so")))

(use-foreign-library assimp)
