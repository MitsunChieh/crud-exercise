class JapanDramasController < ApplicationController

  before_action :set_drama, :only => [:show, :edit ,:update, :destroy]

  def index
    @drama = JapanDrama.page(params[:page]).per(5)
  end

  # def new
  #   @drama = JapanDrama.new
  # end

  def create
    @drama = JapanDrama.new(drama_params)

    if @drama.save
      flash[:notice] = "drama was successfully created"
      redirect_to japan_dramas_url
    else
      render :action => :new
    end
  end

  def show
    @page_title = @drama.name
  end

  def edit
  end

  def update
    if @drama.update_attributes(drama_params)
      flash[:notice] = "drama was successfully updated"
      redirect_to japan_drama_url(@drama)
    else
      render :action => :edit
    end
  end

  def destroy
    @drama.destroy
    flash[:alert] = "drama was successfully deleted"
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