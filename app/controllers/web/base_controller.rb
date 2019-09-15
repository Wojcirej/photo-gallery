class Web::BaseController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @photo = Photo.first
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:login, :email]
  end
end
