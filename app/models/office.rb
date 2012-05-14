class Office < ActiveRecord::Base
  attr_accessible :address, :city, :geo, :name, :references, :state, :zip
  has_many :users
end
