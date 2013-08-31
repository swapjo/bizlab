class CreateBookmarkBusinessItems < ActiveRecord::Migration
  def change
    create_table :bookmark_business_items do |t|
      t.integer :business_item_id
      t.integer :user_id

      t.timestamps
    end
  end
end
