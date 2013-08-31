class CreateJobCategories < ActiveRecord::Migration
  def change
    create_table :job_categories do |t|
      t.string :name
      t.string :introtext
      t.text :description
      t.boolean :ispublished
      t.integer :parent_category_id

      t.timestamps
    end
  end
end
