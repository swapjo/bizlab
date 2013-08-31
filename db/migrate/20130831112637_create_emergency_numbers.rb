class CreateEmergencyNumbers < ActiveRecord::Migration
  def change
    create_table :emergency_numbers do |t|
      t.string :name
      t.string :value
      t.integer :priority
      t.boolean :ispublished
      t.string :image

      t.timestamps
    end
  end
end
