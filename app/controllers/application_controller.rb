# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
#  before_filter :authenticate, :except => :login
  session :on
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  protected
  def authenticate
        if session[:user_id] == nil
                flash[:notice] = "YOU MUST BE LOGGED IN TO DO THAT"
                redirect_to :controller => 'user', :action=> 'login'
        end
   end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
