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
      flash[:error] = @photo.errors.messages.values.flatten.join("<br>").html_safe
      render :new
    end
  end

  def destroy
    @photo = current_admin.photos.find(params[:id])
    @photo.destroy
    flash[:notice] = "Photo #{@photo.original_filename} has been deleted successfully"
    redirect_to root_path
  end

  private

  def photo_params
    params.require(:photo).permit(:file)
  end
end
