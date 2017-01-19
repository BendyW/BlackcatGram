class CatpostsController < ApplicationController
  before_action :set_catpost, only: [:show,:edit,:update,:destroy]

  def new
    @catpost = Catpost.new
  end

  def create
    if @catpost = Catpost.create(catpost_params)
      redirect_to catposts_path
    else
      render :new
    end
  end

  def index
    @catposts = Catpost.all
  end

  def show
  end

  def edit
  end

  def update
    if @catpost.update(catpost_params)
      redirect_to(catpost_path(@catpost))
    else
      render :edit
    end
  end

  def destroy
    @catpost.destroy
    redirect_to root_path
  end

  private

  def catpost_params
    params.require(:catpost).permit(:image, :caption)
  end

  def set_catpost
    @catpost = Catpost.find(params[:id])

  end
end
