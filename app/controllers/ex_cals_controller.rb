class ExCalsController < ApplicationController
    def index
        @ex_cals = ExCal.all
        # @countdown = Countdown.find_by(id: params[:countdown_id])
        # @ex_cals = @countdown.ex_cals
    end
    
    def show
        @countdown = Countdown.find_by(id: params[:countdown_id])
        @ex_cal = @countdown.ex_cals.find_by(id: params[:id] )
        @ex_cal = ExCal.find(params[:id])
    end
end