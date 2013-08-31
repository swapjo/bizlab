class CreateCityServices < ActiveRecord::Migration
  def change
    create_table :city_services do |t|
      t.string :title
      t.text :description
      t.integer :city_service_category_id
      t.boolean :ispublished
      t.string :image

      t.timestamps
    end
  end
end
