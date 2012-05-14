class User < ActiveRecord::Base
  attr_accessible :fb_id, :fb_access_token, :first_name, :middle_name, :last_name, :personal_email, :job_email, :cel_phone, :office_id, :send_to_personal, :send_to_job
  
  belongs_to :office
  
  def self.authenticate(fb_id)
    self.find_by_fb_id fb_id;
  end
  
  def self.authenticate_with_salt(id)
    user = find_by_fb_id(id)
  end
  
  def has_complete_information?
    !self.fb_id.nil? and !self.first_name.nil? and !self.middle_name.nil? and !self.personal_email.nil? and !self.cel_phone.nil? and !self.office_id.nil?
  end
  
end
