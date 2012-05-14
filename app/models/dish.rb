class Dish < ActiveRecord::Base
  attr_accessible :description, :image, :name, :dish_type
  has_many :menu_dishes
  has_many :menus, :through => :menu_dishes
end
