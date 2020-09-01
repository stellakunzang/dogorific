class CreateBreeds < ActiveRecord::Migration[5.1]
  def change
    create_table :breeds do |t|
      t.string :name
      t.string :country
      t.string :description
      t.string :images
      t.boolean :favorite, default: false
      t.timestamps
    end
  end
end
