class Countdowns < ActiveRecord::Migration[5.2]
  def change
    create_table :countdowns do |t|
    t.string :notes

    t.timestamps
    end
  end
end
