class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  
  def create
    @comment = Comment.new(params[:comment])
    
    if @comment.save 
      redirect_to(@comment, :notice => "Comment was successfully created.")
    else
      render :action => "new"
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    
    if @comment.destroy
      redirect_to(comments_url)
    end
  end
end
