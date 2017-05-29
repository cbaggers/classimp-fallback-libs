# Classimp Fallback Libs

Ideally we would be able to either build `assimp` when we need it on a given machine. However in some cases this proves problematic, maybe due to access restrictions or even due to it not being worth it for a quick experiment.

In these cases this library can be useful. It provides the binary version of the library for a small selection of common platforms. Simply swap out `:classimp` in the `:depends-on` section of your `defsystem` with `:classimp-fallback-libs`. This will add the `lib**` folders to `CFFI`'s search paths, and then load `classimp`.

## A warning

It is seriously recommended that you never ship libraries with `classimp-fallback-libs` as a dependency as this will mean changing how `classimp` loads for other people, which is (at best) disrespectful. Only use this for 'leaf' projects, like a game for example.
