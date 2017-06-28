class DotsController < ApplicationController
  protect_from_forgery :except => [:post]
  def index
  	@dots = Dot.all
  end

  def show
  end

  def searchRectangle
	@dots = Dot.all
	render :json => @dots
  end

  def post

	hashed_json = JSON.parse((request.body.read))
	hashed_json.each do |res|
		dot = Dot.new
		dot.typename = res["typename"]
		dot.latitude = res["latitude"].to_f
		dot.longtitude = res["longtitude"].to_f
		dot.speed = res["speed"].to_f
		dot.degree = res["degree"].to_f
		dot.time = res["time"]
		dot.save
	end
	@dots = Dot.all
	render :json => @dots
  end
end
