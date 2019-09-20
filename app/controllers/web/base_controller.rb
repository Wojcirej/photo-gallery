class Web::BaseController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    paginated_photos = Photo.all.paginate(page: params[:page])
    @current_page = paginated_photos.current_page
    @show_previous_button = @current_page > 1
    @show_next_button = @current_page < Photo.count
    @photo = paginated_photos.take
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:login, :email]
  end
end
