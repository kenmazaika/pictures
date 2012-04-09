class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end


  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.create(params[:picture])
    if @picture.persisted?
      redirect_to pictures_url
    else
      render :new, :status => :unprocessable_entity
    end
  end
end
