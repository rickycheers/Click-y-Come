class Dish < ActiveRecord::Base
  attr_accessible :description, :image, :name, :type
end
