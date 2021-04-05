require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions unless test?
    set :session_secret, "secret"
  end
    

  get "/" do

    erb :"/index"
  end

  #login route (render login form)
  get '/login' do
    if logged_in?
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
    #session[:user_id] = nil
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
  
