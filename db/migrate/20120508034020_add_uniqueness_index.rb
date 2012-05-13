class AddUniquenessIndex < ActiveRecord::Migration
  def up
    add_index :users, :personal_email, :unique => true
    add_index :users, :job_email, :unique => true
    add_index :users, :fb_id, :unique => true
  end

  def down
    remove_index :users, :personal_email
    remove_index :users, :job_email
    remove_index :users, :fb_id
  end
end
