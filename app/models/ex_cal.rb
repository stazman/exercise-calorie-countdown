class ExCal < ApplicationRecord

    def self.total_calories_left(total_calories_burned)
        770000 - total_calories_burned
    end

    def self.total_calories_burned
        self.all.collect {|tb| tb.calories_burned}.flatten.sum
    end

    def self.total_days_left
        # @finish_date = Date.parse("9/25/2027")
        # @current_date = Date.current.to_s
        # (@finish_date.to_i - @original_date.to_i)
        a = Date.parse("25/9/2027") - Date.current
        a.to_s.chomp("/1")
    end
end
