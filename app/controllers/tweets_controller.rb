# encoding = utf-8
class TweetsController < ApplicationController

	def create
		@tweet = Tweet.new		
		@tweet.estado = params[:tweet][:estado]
		@tweet.monstruo_id = params[:tweet][:monstruo_id]
		@tweet.save
		redirect_to monstruos_path
	end  

  def new
  	@tweet = Tweet.new
  end

  def default    
  end
  
  def index
	@monstruo = Monstruo.find(params[:id])	
	if @monstruo.tweets.count > 2
		@monstruo.critter_star = true
	end
  end

  def show
	
  end
end
