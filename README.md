# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

####Fix bcrypt bug in Windows.
```
cd <Ruby Home>\lib\ruby\gems\<Version>\gems\bcrypt-3.1.10-x86-mingw32\ext\mri  
ruby extconf.rb
C:\<DevKit Path>\devkitvars.bat 
make install
```

* ...
