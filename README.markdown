Quick Bundler
=============

Quick Bundler searches for the nearest Gemfile and loads the gems specified
inside it. It's nothing more than a wrapper to [Bundler][] to locate a Gemfile,
load it, then require all gems in the Gemfile.

Installing
==========

    gem install quick-bundler

Usage
=====

Stick this at the top of you're app ...

    require "rubygems"
    require "quick-bundler"

... and you're done!

[Bundler]: http://gembundler.com/
