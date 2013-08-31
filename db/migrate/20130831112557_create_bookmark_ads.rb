class CreateBookmarkAds < ActiveRecord::Migration
  def change
    create_table :bookmark_ads do |t|
      t.integer :ad_id
      t.integer :user_id

      t.timestamps
    end
  end
end
