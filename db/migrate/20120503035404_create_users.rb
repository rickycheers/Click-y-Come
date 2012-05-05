class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :fb_id
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :office_id

      t.timestamps
    end
  end
end
