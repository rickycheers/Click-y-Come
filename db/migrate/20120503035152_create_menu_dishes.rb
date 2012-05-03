class CreateMenuDishes < ActiveRecord::Migration
  def change
    create_table :menu_dishes do |t|
      t.number :menu_id
      t.number :dish_id

      t.timestamps
    end
  end
end
