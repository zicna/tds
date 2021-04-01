class TeamController < ApplicationController
    #show all teams
    get '/teams' do

        erb :"teams/show_all"
    end

    #create new; render form
    get '/teams/new' do

        erb :"/teams/new"
    end

    #show single team
    get '/teams/:id' do
        @team = Team.find_by(id: params[:id])
        @dispatchers = []
            Dispatcher.all.each do |disp|
                if disp.team_id == @team.id
                    @dispatchers << disp
                end
            end

        erb :"teams/show"
    end

    #show all drivers for the team
    get '/teams/:id/drivers' do
        @team = Team.find_by(id: params[:id])
        @team_drivers = []
        Driver.all.each do |driver|
            if driver.team_id == params[:id].to_i
                @team_drivers << driver
            end
        end
    
        erb :"/teams/team_drivers"
    end

    #create new team
    post '/teams' do
        #binding.pry
        @team = Team.create(params[:team])

        redirect to '/teams'
    end

    #delete team
    
end