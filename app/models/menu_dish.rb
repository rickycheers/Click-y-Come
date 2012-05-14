class MenuDish < ActiveRecord::Base
  attr_accessible :dish_id, :menu_id
  belongs_to :menu
  belongs_to :dish
end
