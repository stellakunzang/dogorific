class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :breeds, :favorite
  end
end
