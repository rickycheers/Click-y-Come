class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :fb_id
      t.string :fb_access_token
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :personal_email
      t.string :job_email
      t.integer :cel_phone
      t.string :office_id
      t.boolean :send_to_personal
      t.boolean :send_to_job

      t.timestamps
    end
  end
end
