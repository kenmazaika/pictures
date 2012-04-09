class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end


  def new
    @picture = Picture.new
  end

  def create
    Picture.create(params[:picture])
    redirect_to pictures_url
  end
end
