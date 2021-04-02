class LoadController < ApplicationController
    #show all  loads route
    get '/loads' do
        @loads = Load.all

        erb :"loads/show_all"
    end

    #render form for creating new load
    get '/loads/new' do

        erb :"loads/new"
    end

    #receiving end for new load form
    post '/loads' do
        #as load attribute disp_id it would be nice to use id from loged in user and not putting in manually
        @load = Load.create(params[:load])

        redirect to "/loads/#{@load.id}"
    end

    #show a single load 
    get '/loads/:id' do
        @load = Load.find_by(id: params[:id])
        
        erb :"/loads/show"
    end

    #update
    get '/loads/:id/edit' do
        @load = Load.find_by(id: params[:id])

        erb :"loads/edit"
    end

    patch '/loads/:id' do
        @load = Load.find_by(id: params[:id])
        @load.update(params[:load])

        redirect to "/loads/#{@load.id}"
    end

    #delete
    get '/loads/:id/delete' do 
        @load = Load.find_by(id: params[:id])
        @load.delete

        redirect to "/loads"
    end
    
end