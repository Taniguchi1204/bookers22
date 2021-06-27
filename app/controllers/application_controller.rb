class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except:[:top,:about]
  before_action :configure_permitted, if: :devise_controller?

  protected

  def configure_permitted
    devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
  end
end
