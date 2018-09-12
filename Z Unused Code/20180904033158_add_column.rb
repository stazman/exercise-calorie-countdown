class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :ex_cals, :countdown_id, :integer
  end
end
