class CreateAdCategories < ActiveRecord::Migration
  def change
    create_table :ad_categories do |t|
      t.string :name
      t.string :introtext
      t.text :description
      t.boolean :ispublished
      t.string :image
      t.integer :parent_category_id

      t.timestamps
    end
  end
end
