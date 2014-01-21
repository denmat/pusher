require 'sinatra'

class Pusher < Sinatra::Base 
  get '/' do
    "Hello World"
  end

  get '/incident/:id' do 
    "Incident #{params[:id]}"
  end
end

#Pusher.run!
