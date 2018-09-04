class Countdown < ApplicationRecord
    has_many :ex_cals
    accepts_nested_attributes_for :ex_cals

    def ex_cals_attributes=(ex_cals_attributes)
        ex_cals_attributes.values.each do |ex_cals_attribute| 
        ex_cal = ExCal.find_or_create_by(ex_cals_attribute)
            # unless lfg_attribute.blank?
            #  unless lfg_attribute.name.blank?  
        self.ex_cals << ex_cal  
        end 
    end
end
