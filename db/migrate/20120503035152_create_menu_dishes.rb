class CreateMenuDishes < ActiveRecord::Migration
  def change
    create_table :menu_dishes do |t|
      t.integer :menu_id
      t.integer :dish_id

      t.timestamps
    end
  end
end
