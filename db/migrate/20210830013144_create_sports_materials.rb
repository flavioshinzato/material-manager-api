class CreateSportsMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :sports_materials do |t|
      t.string :title
      t.string :description
      t.decimal :price, precision: 10, scale: 2, default: 0
      t.string :image

      t.timestamps
    end
  end
end
