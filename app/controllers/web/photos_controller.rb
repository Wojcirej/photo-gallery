class Web::PhotosController < Web::BaseController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.add_new_for_admin(photo_params, current_admin.id)
    if @photo.persisted?
      flash[:notice] = "Photo uploaded successfully"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:file)
  end
end
