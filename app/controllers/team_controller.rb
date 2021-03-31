class TeamController < ApplicationController
    #show all teams
    get '/teams' do

        erb :"teams/show_all"
    end

    get '/teams/:id' do
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
        erb :"teams/show"
    end
end