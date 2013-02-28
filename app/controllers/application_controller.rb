class ApplicationController < ActionController::Base
  protect_from_forgery

  #makes devise redirect to patients after signin
  def after_sign_in_path_for(resource)
    patients_path
  end
end
