require './config/environment'
# require 'rack-flash'

class ApplicationController < Sinatra::Base
  # use Rack::Flash

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
    
  configure do
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get "/" do
    erb :"/home/index"
  end

  post '/set-flash' do
    # Set a flash entry
    flash[:notice] = "Thanks for signing up!"
    
    
  end
end
  
