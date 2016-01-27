class PicsController < ApplicationController
  def index
    @pics = Pic.all
  end

  def show
    @pic = Pic.find(params[:id])
  end
end
