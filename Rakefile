# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = "ImageRequestExample"
  app.development { app.archs << "x86" }
  app.permissions = [:internet]
  app.gradle do
    # Google's networking API for Android
    dependency "com.mcxiaoke.volley", :artifact => "library", :version => "1.0.10"
  end
end
