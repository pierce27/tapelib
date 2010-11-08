class UserController < ApplicationController
  
  session :on
  
  def authenticate
    User.new(params[:userform]) 
#will create a new object of User, retrieve values from the form and store it variable @user.
	@user = User.new(params[:userform])
    #find records with username,password
	valid_user = User.find(:first,:conditions => ["user_name = ? and password = ?",@user.user_name, @user.password])

        #if statement checks whether valid_user exists or not
	if valid_user
        #creates a session with username
		session[:user_id]=valid_user.user_name
        #redirects the user to our private page.
		redirect_to :action => :private
	else
		flash[:notice] = "Invalid User/Password"
		redirect_to :action=> 'login'
	end
    end

 
  def login
=begin   if request.post?
     user = User.authenticate(params[:user_name], params[:password])
    if user 
      session[:user_id] = user.id
    end
   end
=end
end
  def private
  if !session[:user_id]
     redirect_to :action => 'login'
  end
  end

  def logout
    if session[:user_id]
        reset_session
        redirect_to :action=> 'login'
    end
  end
  
  def signup
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end


  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        flash[:notice] = "User #{@user.user_name} was successfully created."
        format.html { redirect_to(:action=>'login') }
        format.xml  { render :xml => @user, :status => :created,
                             :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors,
                             :status => :unprocessable_entity }
      end
    end
  end

end
