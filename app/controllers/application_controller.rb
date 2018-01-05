class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout "blog"
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :phone, :countrycode])
  end

end
