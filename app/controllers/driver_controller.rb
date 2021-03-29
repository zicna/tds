class DriverController < ApplicationController
    #driver login page
    get '/drivers/signup' do 
        erb :"drivers/signup"
    end

    #driver signin page
    post '/drivers' do
        #binding.pry
        @driver = Driver.create(params[:driver])
        redirect to "/drivers/#{@driver.id}"
    end

    #driver show page
    get '/drivers/:id' do
       # binding.pry
        @diver = Driver.find_by(id: params[:id])
        erb :"drivers/show"
    end
end