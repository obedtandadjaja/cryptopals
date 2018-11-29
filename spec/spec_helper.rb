$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'byebug'

# RAILS_ENV should be set for these tests, unless explicitly overridden
ENV['RAILS_ENV'] ||= 'test'
