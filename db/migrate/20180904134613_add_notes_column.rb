class AddNotesColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :ex_cals, :notes, :string
  end
end
