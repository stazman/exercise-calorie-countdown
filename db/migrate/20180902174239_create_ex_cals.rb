class CreateExCals < ActiveRecord::Migration[5.2]
  def change
    create_table :ex_cals do |t|
      t.integer :calories_burned

      t.timestamps
    end
  end
end
