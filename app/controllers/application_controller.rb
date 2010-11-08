# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :authenticate, :only => :index
  session :on
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  protected
  def authenticate
        unless User.find(session[:user_name])
                flash[:notice] = "Invalid User/Password"
                redirect_to :controller => 'user', :action=> 'login'
        end
   end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
