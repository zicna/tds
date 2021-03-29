class DispatcherController < ApplicationController

    get '/dispatchers/signup' do 
        erb :"dispatchers/signup"
    end

    post '/dispatchers' do
        @dispatcher = Dispatcher.create(params[:dispatcher])

        redirect to "/dispatchers/#{@dispatcher.id}"
    end

    #show page where we render(show) data of one(individual) instance
    get '/dispatchers/:id' do 
        @dispatcher = Dispatcher.find_by_id(params[:id])
        @team = Team.find_by_id(@dispatcher.team_id)

        @dispatcher_loads = @dispatcher.loads
        # binding.pry
        erb :"dispatchers/show"
    end


end