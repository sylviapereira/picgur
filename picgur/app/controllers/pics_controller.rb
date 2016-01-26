class PicsController < ApplicationController
  def index
    @pic = Pic.all
  end
end
