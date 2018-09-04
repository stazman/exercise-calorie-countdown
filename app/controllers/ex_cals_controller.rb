class ExCalsController < ApplicationController
    def index
        @ex_cals = ExCal.all
        # @countdown = Countdown.find_by(id: params[:countdown_id])
        # @ex_cals = @countdown.ex_cals
        @total_calories_left = ExCal.total_calories_left
        @total_calories_burned = ExCal.total_calories_burned

    end
    
    def show
        @countdown = Countdown.find_by(id: params[:countdown_id])
        @ex_cal = @countdown.ex_cals.find_by(id: params[:id] )
        @ex_cal = ExCal.find(params[:id])
    end
end