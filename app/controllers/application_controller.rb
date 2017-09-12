class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  before_action :authenticate_user!


  def configure_permitted_parameters
    #for additional fields in app/views/devis/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:lastname, :firstname, :mobil_phone])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:lastname, :firstname, :mobil_phone])
  end

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
