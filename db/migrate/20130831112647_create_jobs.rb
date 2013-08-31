class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.integer :vacancy_count
      t.integer :company_id
      t.text :qualification
      t.integer :job_categiory_id
      t.text :meeting_address
      t.date :expiry_date
      t.boolean :ispublished
      t.boolean :isapproved
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
