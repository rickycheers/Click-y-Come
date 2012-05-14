class Order < ActiveRecord::Base
  attr_accessible :menu_id, :user_id
  belongs_to :user
  belongs_to :menu
end
