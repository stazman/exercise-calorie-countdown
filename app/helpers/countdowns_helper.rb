module CountdownsHelper
    def countdown_ex_cals
        self.ex_cals.all.each do |cec|
            cec.calories_burned
        end
    end
end