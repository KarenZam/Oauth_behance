require 'oauth_behance'

class HomeController < ApplicationController
  def index
    state = SecureRandom.hex(32)
    session[:random_oauth_token] = state
    @authorize_url = OauthBehance.authorize_url(state)
  end
end
