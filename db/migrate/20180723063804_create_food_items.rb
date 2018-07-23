class CreateFoodItems < ActiveRecord::Migration[5.2]
  def change
    create_table :food_items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image_url
      t.string :Type
      t.string :Calories
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
