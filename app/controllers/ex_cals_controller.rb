class ExCalsController < ApplicationController
    def index
        @ex_cals = ExCal.all
        # @countdown = Countdown.find_by(id: params[:countdown_id])
        # @ex_cals = @countdown.ex_cals
    end
    
    def new
        @ex_cal = ExCal.new
    end

    def create
        @ex_cal = ExCal.create(ex_cal_params) r  
    end

    def show
        @ex_cal = ExCal.find(params[:id])   
        # @countdown = Countdown.find_by(id: params[:countdown_id])
        # @ex_cal = @countdown.ex_cals.find_by(id: params[:id] )
        # @ex_cal = ExCal.find(params[:id])
    end

    private

    def ex_cal_params
        params.require(:ex_cal).permit(:calories_burned)
    end
end