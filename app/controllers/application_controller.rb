class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      if resource.role == 'student'
        profile_path # Replace with your route helper for student show page
      elsif resource.role == 'counselor'
        counselor_path(resource) # Replace with your route helper for counselor show page
      else
        root_path # Or redirect to a default path
      end
    else
      super
    end
  end
end
