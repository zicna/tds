class TeamController < ApplicationController
    #show all teams
    get '/teams' do

        erb :"teams/show_all"
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
            
        # @teamloads = []
        #     Load.all.each do |load|
        #         if load.dispatcher_id == @team.id
        #             @teamloads << load
        #         end
        #     end
        erb :"teams/show"
    end

    #show all drivers for the team
    get '/teams/:id/drivers' do
        binding.pry
        @team = Team.find_by(id: params[:id])
        @team_drivers = []
        Driver.all.each do |driver|
            if driver.team_id == params[:id].to_i
                @team_drivers << driver
            end
        end
        binding.pry
        erb :"/teams/team_drivers"
    end
end