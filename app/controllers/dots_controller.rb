class DotsController < ApplicationController
  def index
  	@dots = Dot.all
  end

  def show
  end

  def searchRectangle
	@dots = Dot.all
	render :json => @dots
  end
end
