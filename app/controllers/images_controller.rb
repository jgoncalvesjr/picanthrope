class ImagesController < ApplicationController
  
  def index
    authorize Image
    @images = policy_scope(Image).all
  end
  
  def new
  end

  def create
    # Rails.logger.info(image_params.inspect)
    # render plain: 'OK'
    image_params[:file].each_pair do |i, file|
      Image.create!(file: file, user: current_user)
    end
  end

  private

  def image_params
    params.permit(file: {})
  end

end
