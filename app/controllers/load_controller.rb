class LoadController < ApplicationController
    #show all  loads route
    get '/loads' do
        if logged_in?
        @loads = Load.all

        erb :"loads/show_all"
        else
            erb :"dispatchers/login"
        end
    end

    #render form for creating new load
    get '/loads/new' do
        @dispatcher = Dispatcher.find_by(id: session[:user_id])
        if @dispatcher
            @team = Team.find_by(id: @dispatcher[:team_id])
        end

        erb :"loads/new"
    end

    #receiving end for new load form
    post '/loads' do
        @load = Load.create(params[:load])

        redirect to "/loads/#{@load.id}"
    end

    #show a single load 
    get '/loads/:id' do
        @load = Load.find_by(id: params[:id])
        
        erb :"/loads/show"
    end

    #update/edit
    get '/loads/:id/edit' do
        @load = Load.find_by(id: params[:id])
        
        if current_user && @load.dispatcher_id == session[:user_id]
            @load = Load.find_by(id: params[:id])

            erb :"loads/edit"
        else
            erb :"dispatchers/error_access_denied"
        end
    end

    patch '/loads/:id' do
        @load = Load.find_by(id: params[:id])
        @load.update(params[:load])

        redirect to "/loads/#{@load.id}"
    end

    #delete
    #needs more work 
    get '/loads/:id/delete' do 
        @load = Load.find_by(id: params[:id])
        if current_user && @load.dispatcher_id == session[:user_id]
            
            @load.delete

            redirect to "/loads"
        else
            erb :"dispatchers/error_access_denied"
        end
    end
    
end