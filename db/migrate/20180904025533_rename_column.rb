class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :countdowns, :date, :ex_type
  end
end
