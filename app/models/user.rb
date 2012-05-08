class User < ActiveRecord::Base
  attr_accessible :email, :fb_id, :first_name, :last_name, :name, :office_id, :phone
  
  def self.authenticate(fb_id)
    self.find_by_fb_id fb_id;
  end
end
