class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.integer :ad_category_id
      t.decimal :price
      t.integer :address_id
      t.integer :company_id
      t.integer :shopping_mall_id
      t.integer :ad_position_id
      t.boolean :ispublished
      t.boolean :isapproved
      t.date :expiry_date
      t.integer :user_id
      t.string :image
      t.integer :ad_type_id

      t.timestamps
    end
  end
end
