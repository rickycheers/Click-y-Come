class PagesController < ApplicationController
  
  def index
    #redirect_to dashboard_url if authenticated?
  end
  
  def home
    #fb_auth = FbGraph::Auth.new(126196304181338, 'a5bed406cbdd4e9ea8b1099f8d935d30', :redirect_uri => 'http://localhost:3000/pages/facebook')
    #fb_auth.client
    #fb_auth.from_cookie(cookies)
    #logger.debug "The object is #{fb_auth.inspect}"
    
  end
end
