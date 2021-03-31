class LoadController < ApplicationController
    #list all loads
    get '/loads' do
        @loads = Load.all
        erb :"loads/show_all"
    end
    #create
    get '/loads/new' do
        erb :"loads/new"
    end

    post '/loads' do
        #         {"load"=>
        #   {"pickup"=>"Atlanta",
        #   "delivery"=>"Detroit",
        #   "miles"=>"1",
        #   "amount"=>"1",
        #   "driver_id"=>"1"

        #as load attribute disp_id it would be nice to use id from loged in user and not putting in manually
        binding.pry
        @load = Load.create(params[:load])
        redirect to "/loads/#{@load.id}"
    end

    #read/show
    get '/loads/:id' do
        @load = Load.find_by(id: params[:id])
        erb :"/loads/show"
    end


    #update
    #delete
    
end