class PicsController < ApplicationController
  def index
    @pics = Pic.all
  end

  def show
    @pic = Pic.find(params[:id])
  end

  def new
  end

  def create
    render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:art_name]}, Artist: #{params[:art_maker]}"
  end

end
