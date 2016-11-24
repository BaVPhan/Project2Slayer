class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user   # Here we're saying "run the method set_current_user before every controller action"

  # definitely where you want this method!
  def set_current_user
    if User.exists?(session[:user_id])    # If there is a user_id currently stored in the session hash...
      @current_user = User.find(session[:user_id])  # ...find and save that user in @current_user
    else
      @current_user = nil   # ...otherwise, set @current_user to nil
    end
  end

end

# solid project and solid effort overall-- it seems like you've acquired much more comfort with rails! hopefully this is helping you to tackle angular! nice work, Ba!
