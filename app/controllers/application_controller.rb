require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :"/home/index"
  end

  get "/login" do
    erb :"/home/login"
  end


end
