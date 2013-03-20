class WelcomeController < ApplicationController
  #layout false
 
  def index
  end

  def redirect_to_sign_up
    if signed_in?.blank?
      redirect_to new_user_registration_path
    else
      redirect_to user_root_path
    end
  end 
end
