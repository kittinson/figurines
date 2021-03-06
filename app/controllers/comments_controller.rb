class CommentsController < ApplicationController

  def index
    # if params[:search]
    #   # @ingredient = Ingredient.where(name: params[:search].capitalize).first
    #   @comments = @ingredient.cocktails
    # else
      @comments = Comment.all
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
     @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comments_path(@comment)
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    if @comment.save
      redirect_to comment_path(@comment)
    else
      render :edit
    end
  end

  def destroy
    @comment = Cocktail.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

  private

  def comment_params
    params.require(:comment).permit(:description, :review)
  end

end
