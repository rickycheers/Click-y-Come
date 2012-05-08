class FacebookController < ApplicationController
  
  def index
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
    user = FbGraph::User.me(access_token).fetch # => FbGraph::User
    fb_id = user.raw_attributes['id']
    first_name = user.raw_attributes['first_name']
    last_name = user.raw_attributes['last_name']
    email = user.raw_attributes['email']
    #User.new() if !User.authenticate fb_id
    #redirect_to root_url
  end
  
end