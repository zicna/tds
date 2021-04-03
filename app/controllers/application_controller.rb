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

  #login route (render login form)
  get '/login' do

    erb :"dispatchers/login"
  end

  #processing login form
  post '/login' do
    @dispatcher = Dispatcher.find_by(username: params[:dispatcher][:username])

    if @dispatcher && @dispatcher.password == params[:dispatcher][:password]
      session[:user_id] = @dispatcher.id

      redirect to "/dispatchers/#{@dispatcher.id}"
    end
    
    erb :"dispatchers/error"
  end


end
  
