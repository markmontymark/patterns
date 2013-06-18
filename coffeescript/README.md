# Created with  make-project-grunt.sh
# Author mkoopman

Project name
============

CoffeeScript GoF patterns

Steps to setup and running tests from fresh git clone
=====================================================

    git clone git@github.com:markmontymark/patterns.git
    cd patterns/coffeescript
    npm install
    grunt test


After running 'grunt test', you should see something like:

	Running "coffee:src_compile" (coffee) task
	File build/Creational/Singleton/SingleSpoon.js created.

	Running "coffee:test_compile" (coffee) task
	File build-test/Creational/Singleton.js created.

	Running "jasmine:src" (jasmine) task
	Testing jasmine specs via phantom
	.....
	5 specs in 0.005s.
	>> 0 failures

	Done, without errors.

