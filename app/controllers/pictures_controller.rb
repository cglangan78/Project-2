class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
  end

  def create
    @picture = Picture.new(picture_params)

  if @picture.save
    redirect_to('/')
  else
    render 'new'
  end

  end

  private
  def flower_params
    params.require(:picture).permit([:url, :comment, :location])
  end
end
