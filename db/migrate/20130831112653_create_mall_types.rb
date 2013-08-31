class CreateMallTypes < ActiveRecord::Migration
  def change
    create_table :mall_types do |t|
      t.string :name
      t.string :introtext
      t.text :description
      t.boolean :ispublished

      t.timestamps
    end
  end
end
