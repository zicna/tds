class DispatcherController < ApplicationController

    get '/dispatchers/signup' do 
        erb :"dispatchers/signup"
    end

    post '/dispatchers' do
        binding.pry
    end


end