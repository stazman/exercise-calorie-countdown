class CreateExCals < ActiveRecord::Migration[5.2]
  def change
    create_table :ex_cals do |t|

      t.timestamps
    end
  end
end
