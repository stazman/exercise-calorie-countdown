class CountdownsController < ApplicationController
    
    
    # def total_burned

    # end

    def index
        @countdowns = Countdown.all
        @ex_cals = ExCal.all
        # @countdown_sum = @countdowns.total_burned
        # countdown_ex_cals = ExCal.find_by(id: :countdown_id)
        # @countdown.ex_cals = @countdown.countdown_ex_cals
    end
        
    def new
        @countdown = Countdown.new
    end

    def create
        @countdown = Countdown.new(countdown_params)
        @countdown.save
        # redirect_to ex_cal_path(@countdown)
        redirect_to @countdown
    end

    def show
        @countdown = Countdown.find(params[:id])
        # @countdown_ex_cals = ExCal.where(:countdown_id = @countdown.id)
    end

    def destroy
        @countdown = Countdown.find(params[:id])
        @countdown.destroy
        redirect_to root_url
    end

    private

    def countdown_params
        params.require(:countdown).permit(:notes, ex_cal_ids: [], ex_cals_attributes: [:calories_burned])
    end
end