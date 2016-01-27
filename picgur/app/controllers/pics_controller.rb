class PicsController < ApplicationController
  def index
    @pics = Pic.all
  end

  def show
    @pic = Pic.find(params[:id])
  end

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.new(pic_params)
    if @pic.save
      # if the save for the picture was successful, go to index.html.erb
      redirect_to pics_url
    else
      # otherwise render the view associated with the action :new (i.e. new.html.erb)
      render :new
    end
  end

  private
def pic_params
  params.require(:pic).permit(:art_maker, :art_name, :url)
end

end
