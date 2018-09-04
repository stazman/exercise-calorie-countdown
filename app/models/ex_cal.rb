class ExCal < ApplicationRecord

    
    def self.total_calories_burned
        self.all.collect {|tb| tb.calories_burned}.flatten.sum
    end


end
