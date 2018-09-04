class CountdownsController < ApplicationController
    def index
        @countdown = Countdown.all
    end
        
    def new
        @countdown = Countdown.new
    end

    def create
        @countdown = Countdown.new(countdown_params)
        @countdown.save
        redirect_to @countdown
    end

    def show
        @countdown = Countdown.find(params[:id])
    end

    def destroy
        @countdown = Countdown.find(params[:id])
        @countdown.destroy
        redirect_to root_url
    end

    private

    def countdown_params
        params.require(:countdown).permit(:date, ex_cal_ids: [], ex_cals_attributes: [:calories_burned])
    end
end