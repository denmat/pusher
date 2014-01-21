
require File.join(File.expand_path(File.dirname(__FILE__)), '../app/pusher.rb')
require 'rack/test'
require 'sinatra'
#require 'rspec'

module RSpecMixin
  def app() Pusher end
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include RSpecMixin
  config.drb_port = 9292
end
