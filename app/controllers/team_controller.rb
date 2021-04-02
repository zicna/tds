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
        @dispatchers = @team.dispatchers

        erb :"teams/show"
    end

    #show all drivers for the team
    get '/teams/:id/drivers' do
        @team = Team.find_by(id: params[:id])
        @team_drivers = @team.drivers
    
        erb :"/teams/show_drivers"
    end

    get '/teams/:id/loads' do
        @team = Team.find_by(id: params[:id])

        erb :"/teams/show_loads"
    end

    #create new team
    post '/teams' do
        @team = Team.create(params[:team])

        redirect to '/teams'
    end

    #delete team
    
end