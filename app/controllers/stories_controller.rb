class StoriesController < ApplicationController
  def index
    @story = Story.all.order("created_at desc")
  end
  
  def show
  end
  
  def new
    @story = Story.new
  end
  
  def create
    @story = Story.new(params[:story])
    if @story.save?
      redirect_to @story
    else
      render 'new'
    end
  end
  
end
