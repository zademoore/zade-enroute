class StoriesController < ApplicationController
  before_action :find_story, only: [:show, :edit, :update, :destroy]
  
  def index
    @story = Story.all.order("created_at desc")
  end
  
  def new
    @story = Story.new
  end
  
  def create
    @story = Story.create(story_parmas)
    if @story.save
      redirect_to @story
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @story.save?
      redirect_to @story
    else
      render 'edit'
    end
  end
  
  def destroy
    @story.destroy
    redirect_to stories_path
  end
  
  private
  
  def find_story
    @story = Story.find(params[:id])
  end
    
  def story_parmas
    params.require(:story).permit(:title, :body, :image)
  end 
  
end
