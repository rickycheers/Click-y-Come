class FacebookController < ApplicationController
  
  def new
    # setup client
    fb_auth = FbGraph::Auth.new(126196304181338, 'a5bed406cbdd4e9ea8b1099f8d935d30')
    client = fb_auth.client
    client.redirect_uri = "http://localhost:3000/facebook/callback"
    
    # redirect user to facebook
    redirect_to client.authorization_uri(
      :scope => [:email]
    )
    #logger.debug "---> #{request.inspect}"
  end
  
  def callback
    fb_auth = FbGraph::Auth.new(126196304181338, 'a5bed406cbdd4e9ea8b1099f8d935d30')
    client = fb_auth.client
    client.redirect_uri = "http://localhost:3000/facebook/callback"
    client.authorization_code = params[:code]
    
    access_token = client.access_token! :client_auth_body # => Rack::OAuth2::AccessToken
    fb_user      = @debug = FbGraph::User.me(access_token).fetch # => FbGraph::User
    fb_user      = fb_user.raw_attributes
    fb_id        = fb_user[:id]
    first_name   = fb_user[:first_name]
    middle_name  = fb_user[:last_name]
    email        = fb_user[:email]
    
    user = User.authenticate fb_id
    
    if user.nil?
      new_user = User.new :fb_id => fb_id, :fb_access_token => access_token.to_s, :first_name => first_name, :middle_name => middle_name, :personal_email => email
      new_user.save
      sign_in new_user
    else
      sign_in user
    end
    redirect_to menus_path
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
  
end