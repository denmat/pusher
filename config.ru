$:.unshift './app'

require 'pusher'
require 'api'

#use Rack::Session::Cookie

run Rack::Cascade.new [Pusher,API] 
