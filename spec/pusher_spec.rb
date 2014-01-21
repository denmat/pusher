require 'spec_helper'

describe Pusher do
  
  it 'should load home page' do 
    get '/'
    last_response.should be_ok
  end

  it 'should return an incident id' do
    get '/incident/555'
    last_response.body.should == 'Incident 555'
  end

  it 'should return a json incident string' do
   pending
   get '/incident/555'
   last_response.body.should == 'Incident 555'
  end
end
