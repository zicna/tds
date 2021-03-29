class DriverController < ApplicationController
    #driver login page
    get '/drivers/signup' do 
        erb :"drivers/signup"
    end

    #driver signin page
    post '/drivers' do
        binding.pry
        erb :""
    end
    #driver show page
end