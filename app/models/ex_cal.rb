class ExCal < ApplicationRecord
    has_many :countdown_ex_cals
    has_many :countdowns, through: :countdown_ex_cals
end
