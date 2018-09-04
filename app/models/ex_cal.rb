class ExCal < ApplicationRecord

    def self.total_burned
        all.collect {tb| tb.calories_burned}.flatten.sum
    end
end
