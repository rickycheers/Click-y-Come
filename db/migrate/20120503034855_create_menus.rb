class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.string :description
      t.timestamp :date

      t.timestamps
    end
  end
end
