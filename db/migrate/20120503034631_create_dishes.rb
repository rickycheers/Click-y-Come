class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.string :image
      t.number :type

      t.timestamps
    end
  end
end
