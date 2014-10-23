class JapanDramasController < ApplicationController
  def index
    @dramas = JapanDrama.page(params[:page]).per(10)
  end
end
