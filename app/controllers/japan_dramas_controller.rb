class JapanDramasController < ApplicationController
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

  private

  def drama_params
    params.require(:japan_drama).permit(:name, :date, :actor)
  end
end
