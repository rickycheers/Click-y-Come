class RenameDishesType < ActiveRecord::Migration
  def change
    rename_column :dishes, :type, :dish_type
  end
end
