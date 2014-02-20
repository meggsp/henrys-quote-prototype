class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :job_id
      t.integer :customer_id
      t.integer :customer_po
      t.text :job_info
      t.date :production_start_date
      t.date :production_due_date
      t.date :delivery_date
      t.date :install_1_date
      t.date :install_2_date
      t.text :production_notes
      t.string :install_location

      t.timestamps
    end
  end
end
