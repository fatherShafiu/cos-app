class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(resource)
     profile_path
  end
end
