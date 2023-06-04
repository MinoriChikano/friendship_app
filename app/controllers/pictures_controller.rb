class PicturesController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update]
  
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.create(picture_params)
    if @picture.save
      redirect_to pictures_path, notice: "作成しました"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update(picture_params)
      redirect_to pictures_path, notice "編集完了です！"
    else
      render :edit
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:content)
  end

  def set_blog
    @blog = Picture.find(params[:id])
  end
end
