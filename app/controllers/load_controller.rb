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
        #         {"load"=>
        #   {"pickup"=>"Atlanta",
        #   "delivery"=>"Detroit",
        #   "miles"=>"1",
        #   "amount"=>"1",
        #   "driver_id"=>"1"

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
    #delete
    
end