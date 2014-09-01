class VennController < ApplicationController
  respond_to :html, :json

  def index
    #@songs_by_critic = Song.select("critic, count(*) as tally").group("critic")
    @songs_by_critic = Song.select("title as name, count(*) as size").group("title")
    respond_to do |format|
      format.json { render json: @songs_by_critic }
      format.html
    end
  end

  def bubble
  	params[:critics] ||= []
    @songs_by_critic = Song.select("critic, count(*) as size").group("critic")
    if params[:critics].empty?
	    @songs_by_artist = Song.select("artist as name, count(*) as size").
	    	order("count(*) DESC").group("artist")
    else
    	@songs_by_artist = Song.select("artist as name, count(*) as size").
    		where("critic IN (:critics)",{critics: params[:critics]}).order("count(*) DESC").group("artist")
  	end

    respond_to do |format|
      format.js
      format.html
    end
  end
end