class ImagesController < ApplicationController
  
  PAGE_SIZE = 12

  def index
    authorize Image
    @page_size = PAGE_SIZE
    @page = params[:page].to_i
    @page = 1 if @page == 0
    offset = (@page * @page_size) - @page_size
    scope = policy_scope(Image).all
    @images = scope.offset(offset).limit(@page_size)
    @total_count = scope.count
    @total_pages = (@total_count / @page_size.to_f).ceil
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

  def show
    @image = Image.find params[:id]
    authorize @image
  end

  private

  def image_params
    params.permit(file: {})
  end

end
