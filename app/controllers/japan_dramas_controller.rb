class JapanDramasController < ApplicationController

  before_action :set_drama, :only => [:show, :edit ,:update, :destroy]

  def index
    @drama = JapanDrama.page(params[:page]).per(10)
  end

  def new
    @drama = JapanDrama.new
  end

  def create
    @drama = JapanDrama.new(drama_params)
    @drama.save

    redirect_to japan_dramas_url
  end

  def show
  end

  def edit
  end

  def update
    @drama.update_attributes(drama_params)

    redirect_to japan_drama_url(@drama)
  end

  def destroy
    @drama.destroy

    redirect_to japan_dramas_url
  end

  private

  def drama_params
    params.require(:japan_drama).permit(:name, :date, :actor)
  end

  def set_drama
    @drama = JapanDrama.find(params[:id])
  end

end