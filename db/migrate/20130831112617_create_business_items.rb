class CreateBusinessItems < ActiveRecord::Migration
  def change
    create_table :business_items do |t|
      t.text :title
      t.integer :business_item_category_id
      t.integer :company_id
      t.integer :shopping_mall_id
      t.integer :address_id
      t.boolean :ispublished
      t.boolean :isapproved
      t.date :expiry_date
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
