class ExCal < ApplicationRecord

    def self.total_calories_left(total_calories_burned)
        770000 - total_calories_burned
    end

    def self.total_calories_burned
        self.all.collect {|tb| tb.calories_burned}.flatten.sum
    end
end
