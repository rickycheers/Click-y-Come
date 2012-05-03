class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.number :zip
      t.string :references
      t.string :geo

      t.timestamps
    end
  end
end
