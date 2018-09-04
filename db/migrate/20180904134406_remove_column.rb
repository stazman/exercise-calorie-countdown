class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :ex_cals, :countdown_id
  end
end
