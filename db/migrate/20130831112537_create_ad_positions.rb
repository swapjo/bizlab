class CreateAdPositions < ActiveRecord::Migration
  def change
    create_table :ad_positions do |t|
      t.string :name
      t.boolean :ispublished

      t.timestamps
    end
  end
end
