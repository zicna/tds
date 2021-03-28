class DispatcherController < ApplicationController

    get '/dispatchers/signup' do 
        erb :"dispatchers/signup"
    end

    post '/dispatchers' do
        params.inspect
        @dispatcher = Dispatcher.create(params[:dispatcher])

        redirect to "/dispatchers/#{@dispatcher.id}"
    end

    #show page where we render data of one instance
    get '/dispatchers/:id' do 
        #binding.pry
        @dispatcher = Dispatcher.find_by_id(params[:id])
        @team = Team.find_by_id(@dispatcher.team_id)
        erb :"dispatchers/show"
    end


end