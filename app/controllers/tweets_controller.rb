# encoding = utf-8
class TweetsController < ApplicationController
  
  def new
  	@tweet = Tweet.new
  end

  def default    
  end
  
  def index
  end

  def show
  end
end
