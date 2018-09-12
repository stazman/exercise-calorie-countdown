class ExCalsController < ApplicationController
    def index
        @ex_cals = ExCal.all
        # @countdown = Countdown.find_by(id: params[:countdown_id])
        # @ex_cals = @countdown.ex_cals
        @total_calories_burned = ExCal.total_calories_burned
        @total_calories_left = ExCal.total_calories_left(@total_calories_burned)
        #  - @total_calories_burned
        # @total_calories = 770000
    end

    def new
        @ex_cal = ExCal.new
    end

    def create
        @ex_cal = ExCal.new(params[:ex_cal].permit(:calories_burned, :notes))
        # (calories_burned: params[:ex_cals][:calories_burned], notes: params[:ex_cals][:notes])
        @ex_cal.save
        redirect_to @ex_cal
    end
    
    def show
        # @countdown = Countdown.find_by(id: params[:countdown_id])
        # @ex_cal = @countdown.ex_cals.find_by(id: params[:id] )
        @ex_cal = ExCal.find(params[:id])
    end
end