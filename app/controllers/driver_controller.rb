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

    #edit/ update
    get '/drivers/:id/edit' do 
        @driver = Driver.all.find_by(id: params[:id])

        erb :"drivers/edit"
    end
    
    patch '/drivers/:id' do 
        # binding.pry
        @driver = Driver.all.find_by(id: params[:id])
        @driver.update(params[:driver])

        redirect to "/drivers/#{@driver.id}"
    end
end