class DispatcherController < ApplicationController
    #show all dispatchers route
    get '/dispatchers' do
        @dispatchers = Dispatcher.all

        erb :"dispatchers/show_all"
    end
    #dispatcher signup route
    get '/dispatchers/signup' do 
        
        erb :"dispatchers/signup"
    end
    #receiving from singup form and creating new dispatcher
    post '/dispatchers' do
        @dispatcher = Dispatcher.create(params[:dispatcher])

        redirect to "/dispatchers/#{@dispatcher.id}"
    end

    #show page for single dispatcher
    get '/dispatchers/:id' do 
        @dispatcher = Dispatcher.find_by_id(params[:id])
        @team = Team.find_by(id: @dispatcher.team_id)
        @loads = @dispatcher.loads

        erb :"dispatchers/show"
    end

    #edit
    get '/dispatchers/:id/edit' do
        @dispatcher = Dispatcher.all.find_by(id: params[:id])

        erb :"dispatchers/edit"
    end

    patch '/dispatchers/:id' do 
        @dispatcher = Dispatcher.all.find_by(id: params[:id])
        @dispatcher.update(params[:dispatcher])

        redirect to "dispatchers/#{@dispatcher.id}"
    end

    #delete
    get '/dispatchers/:id/delete' do
        @dispatcher = Dispatcher.all.find_by(id: params[:id])
        @dispatcher.delete

        redirect to "dispatchers/#{@dispatcher.id}"
    end



end