#!/usr/bin/env ruby -w -rubygems
require 'model.rb'

dev = Experiment.find_or_create_by_name('dev')
dev.name = "dev"
dev.canvas_size = {:width => 150, :height => 15}
dev.scripts = ["/experiments/canvas-text/run.js"]
dev.save

webgl_teapot = Experiment.find_or_create_by_name('webgl-teapot')
webgl_teapot.name = "webgl-teapot"
webgl_teapot.canvas_size = {:width => 250, :height => 250}
webgl_teapot.scripts = [
  "/experiments/webgl-teapot/webgl.js",
  "/experiments/webgl-teapot/shaders.js",
  "/gl-matrix-min-1.2.3.js",
  "/webgl-debug.js",
]
webgl_teapot.save

