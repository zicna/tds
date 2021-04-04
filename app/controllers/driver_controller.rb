class DriverController < ApplicationController
   
    #show all drivers route
    get "/drivers" do 
        if logged_in?
            @drivers = Driver.all

            erb :"/drivers/show_all"
        else
            erb :"dispatchers/login"
        end
    end

    #create new driver
    get '/drivers/new' do
        @dispatcher = Dispatcher.find_by(id: session[:user_id])
        @team = Team.find_by(id: @dispatcher.team_id)

        erb :"drivers/new"
    end

    post '/drivers' do
        @driver = Driver.create(params[:driver])
        
        redirect to "/drivers/#{@driver.id}"
    end

    #show single driver route
    get '/drivers/:id' do
        @driver = Driver.find_by(id: params[:id])
        
        erb :"drivers/show"
    end

    #edit/ update
    get '/drivers/:id/edit' do 
        @driver = Driver.all.find_by(id: params[:id])
        if current_user.team_id == @driver.team_id
            erb :"drivers/edit"
        else
            erb :"dispatchers/error_access_denied"
        end
    end
    
    patch '/drivers/:id' do 
        @driver = Driver.all.find_by(id: params[:id])
        @driver.update(params[:driver])

        redirect to "/drivers/#{@driver.id}"
    end

    get '/drivers/:id/delete' do
        @driver = Driver.all.find_by(id: params[:id])
        if current_user.team_id == @driver.team_id
            @driver.delete
            redirect to "/drivers"
        else
            erb :"dispatchers/error_access_denied"
        end
        
    end
end