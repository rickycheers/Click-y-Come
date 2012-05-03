class User < ActiveRecord::Base
  attr_accessible :email, :fb_id, :first_name, :last_name, :name, :office_id, :phone
end
