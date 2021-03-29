class TeamController < ApplicationController
    get '/teams' do
        erb :"teams/index"
    end

    get '/teams/:id' do
        #binding.pry
        @team = Team.find_by(id: params[:id])
        @dispatchers = []
        Dispatcher.all.each do |disp|
            if disp.team_id == @team.id
                @dispatchers << disp
            end
        end
        @teamloads = []
        Load.all.each do |load|
            if load.team_id == @team.id
                @teamloads << load
            end
        end
        #binding.pry
        erb :"teams/show"
    end
end