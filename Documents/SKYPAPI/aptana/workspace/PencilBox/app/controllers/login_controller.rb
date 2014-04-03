class LoginController < ApplicationController
  skip_before_action :authorize  
  
  def new
  end

  def create
#      puts "in user sessions controller"
      
      user = User.find_by(username: params[:username]) #Search for user first
      
      if user and user.authenticate(params[:password])  #If exists and it is authenticated
          session[:user_id] = user.userid
          # redirect authenticated user according to role
          case user.userprofile
          when 1 #parent
              redirect_to parent_view_url
          when 2 #teacher
              redirect_to teacher_view_url
          when 3 #admin
              redirect_to admin_view_url
          else    
              redirect_to login_url, alert: "Invalid user profile, please email #{ActionController::Base.helpers.link_to "Admin", '/login'}".html_safe    
          end
              
          # if user.userprofile == 3
            # redirect_to p_badmin_access_path_url #Admin users go here
          # else if 
            # redirect_to new_user_url             #Everyone else here for now (teachers will get different landing page than parents)
          # end      
      else
          redirect_to login_url, alert: "Invalid username/password entry!"    
      end
      
  end

  def destroy
      session[:user_id] = nil
      redirect_to login_url, alert: "Logged Out"
  end
end
