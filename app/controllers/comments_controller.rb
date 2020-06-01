class CommentsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @place = Place.find(params[:place_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @place = Place.find(params[:place_id])
    @comment.place = @place
    @comment.user = current_user
    if @comment.save
      redirect_to place_path(@place)
    else
      render 'places/show'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to place_path(@comment.place)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end

