class User < ActiveRecord::Base
  attr_accessible :email, :fb_id, :fb_access_token, :first_name, :last_name, :name, :office_id, :phone
  
  def self.authenticate(fb_id)
    self.find_by_fb_id fb_id;
  end
  
  def self.authenticate_with_salt(id)
    user = find_by_fb_id(id)
  end
  
  def has_complete_information?
    !self.fb_id.nil? and !self.first_name.nil? and !self.last_name.nil? and !self.email.nil? and !self.phone.nil? and !self.office_id.nil?
  end
  
end
