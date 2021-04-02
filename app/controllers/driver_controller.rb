class DriverController < ApplicationController
   
    #show all drivers route
    get "/drivers" do 
        @drivers = Driver.all

        erb :"/drivers/show_all"
    end

    #show single driver route
    get '/drivers/:id' do
        @driver = Driver.find_by(id: params[:id])
        
        erb :"drivers/show"
    end
end