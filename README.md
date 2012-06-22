Eevee
=====

Eevee will be a Rake-based helper for building mobile applications using
(initially) PhoneGap. The idea will be that you'll generate an app folder
much like a Rails app (`eevee new appname` or whatever), which will contain
a folder structure that Eevee can use to make builds of your application.

Proposed Directory Structure
----------------------------

    .
    |--- Rakefile
    |--- application.yml
    |--- build (this directory should be gitignored)
    |    |--- android
    |         |--- (Android project goes here)
    |    |--- ios
    |         |--- (XCode project goes here)
    |--- dist (output files, gitignore this possibly)
    |--- plugins
    |    |--- android
    |    |--- ios
    |--- src (HTML and other files, the www directory in PhoneGap)

Thoughts
--------

* We will support ERb templates in the "src" directory. This will permit you
  to utilize Ruby to ease developing applications (obviously, the output will
  still need to be static HTML).
* We need to have a standard way of code signature handling. Perhaps a
  "certificates" subdirectory which would hold the iOS provisioning profile and
  Android keystore, and when you build, you have to select which provisioning
  profile or key to use.
* Colorized output. We need it.

Rake tasks
----------

* eevee - build all target platforms
* eevee:build:android - builds Android app
* eevee:build:ios - builds iOS app
* eevee:run - runs the app in a simulator
