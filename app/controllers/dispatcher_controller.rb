# require 'rake-flash'

class DispatcherController < ApplicationController
    # use Rack::Flash

    #show all dispatchers route
    get '/dispatchers' do
        if logged_in? 
            @dispatchers = Dispatcher.all

            erb :"dispatchers/show_all"
        else
            erb :"dispatchers/login"
        end
    end

    #dispatcher signup route
    get '/dispatchers/signup' do 
        if logged_in?
            erb :"dispatchers/error_already_login"
        end
        erb :"dispatchers/signup"
    end
    
    #receiving from singup form and creating new dispatcher
    post '/dispatchers' do
        
        # binding.pry
        if !params[:team][:name].empty?
            @team = Team.create(params[:team])
            @dispatcher = Dispatcher.create(
                name: params[:dispatcher][:name],
                team_id: @team.id, 
                password: params[:dispatcher][:password],
                email: params[:dispatcher][:email],
                username: params[:dispatcher][:username],
            )
        else
            @dispatcher = Dispatcher.create(params[:dispatcher])
        end
        session[:user_id] = @dispatcher.id
        redirect to "/dispatchers/#{@dispatcher.id}"
    end

    #show page for single dispatcher
    get '/dispatchers/:id' do 
        # binding.pry
        @dispatcher = Dispatcher.find_by_id(params[:id])
        # session[:user_id] = @dispatcher.id
        @team = Team.find_by(id: @dispatcher.team_id)
        @loads = @dispatcher.loads

        erb :"dispatchers/show"
    end

    #edit
    get '/dispatchers/:id/edit' do
        if current_user.id == params[:id].to_i
            @dispatcher = Dispatcher.all.find_by(id: params[:id])

            erb :"dispatchers/edit"
        else
            erb :"dispatchers/error_access_denied" 
        end
    end

    patch '/dispatchers/:id' do 
        @dispatcher = Dispatcher.all.find_by(id: params[:id])
        @dispatcher.update(params[:dispatcher])

        redirect to "dispatchers/#{@dispatcher.id}"
    end

    #delete
    get '/dispatchers/:id/delete' do
        if current_user.id == params[:id].to_i
            @dispatcher = Dispatcher.all.find_by(id: params[:id])
            @dispatcher.delete

            redirect to "dispatchers/#{@dispatcher.id}"
        else
            erb :"dispatchers/error_access_denied" 
        end
    end



end