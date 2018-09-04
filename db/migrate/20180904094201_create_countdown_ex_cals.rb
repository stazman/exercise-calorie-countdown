class CreateCountdownExCals < ActiveRecord::Migration[5.2]
  def change
    create_table :countdown_ex_cals do |t|
      t.integer :countdown_id
      t.integer :ex_cal_id

      t.timestamps
    end
  end
end
