class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :countdowns, :date, :string
  end
end
