class AddUniquenessIndex < ActiveRecord::Migration
  def up
    add_index :users, :email, :unique => true
    add_index :users, :fb_id, :unique => true
  end

  def down
    remove_index :users, :email
    remove_index :users, :fb_id
  end
end
