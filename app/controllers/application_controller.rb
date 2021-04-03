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
    if logged_in?
      #binding.pry
      erb :"dispatchers/error_already_login"
    else 
      erb :"dispatchers/login"
    end
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

  #dispatcher signout
  get '/logout' do
    session.clear
    redirect to '/'
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      Dispatcher.find_by(id: session[:user_id])
    end
  end



end
  
