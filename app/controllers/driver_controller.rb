class DriverController < ApplicationController
    # #driver login page
    # get '/drivers/signup' do 
    #     erb :"drivers/signup"
    # end

    # #driver signin page
    # post '/drivers' do
    #     #binding.pry
    #     @driver = Driver.create(params[:driver])
    #     redirect to "/drivers/#{@driver.id}"
    # end

    #driver show page


    #show all drivers route
    get "/drivers" do 
        @drivers = Driver.all

        erb :"/drivers/show_all"
    end

    #show single driver route
    get '/drivers/:id' do
        @diver = Driver.find_by(id: params[:id])
        
        erb :"drivers/show"
    end
end