class Menu < ActiveRecord::Base
  attr_accessible :date, :description, :name
  has_many :menu_dishes
  has_many :dishes, :through => :menu_dishes
  
  has_many :orders
  has_many :users, :through => :orders
end
