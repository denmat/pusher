module API 

  require 'grape'

  class API < Grape::API

  version 'v1', using: :header, vendor: 'none'
  format :json

  helpers do
    def current_user
      @current_user ||= User.authorize!(env)
    end

    def authenticate!
      error!('401 Unauthorized', 401) unless current_user
    end
  end
  end
end
