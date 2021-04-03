class TeamController < ApplicationController

    #show all teams
    get '/teams' do
        if logged_in?
            erb :"teams/show_all"
        else
            erb :"dispatchers/login"
        end
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
        # binding.pry
        @loads = @team.loads
        @dispatchers = @team.dispatchers
        @drivers = @team.drivers
        erb :"/teams/show_loads"
    end
    #create new team
    post '/teams' do
        @team = Team.create(params[:team])
        redirect to '/teams'
    end
    #edit team
    get '/teams/:id/edit' do
        if current_user && current_user.team_id == params[:id].to_i
            @team = Team.find_by(id: params[:id])
            erb :"teams/edit"
        else
            erb :"dispatchers/error_access_denied"
        end
    end

    patch '/teams' do
        @team = Team.find_by(id: params[:team][:id])
        @team.update(params[:team])

        redirect "/teams/#{@team.id}"
    end

    #delete team
    get '/teams/:id/delete' do
        if current_user && current_user.team_id == params[:id].to_i
            @team = Team.find_by(id: params[:id])
            @team.delete
            
            redirect to "/teams"
        else
            erb :"dispatchers/error_access_denied"
        end
    end

end