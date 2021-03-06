module SessionsHelper

  def sign_in(user)
    session[:user] = user.id
    self.current_user = user
  end
  
   def signed_in?
    !self.current_user.nil?
  end
  
  def sign_out
    self.current_user = nil
    session.delete(:user)
  end

  
  def current_user=(user)
    @current_user = user
  end
  
  def current_user
    @current_user ||= User.find_by_id(session[:user])
  end
end
