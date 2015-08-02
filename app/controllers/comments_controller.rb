class CommentsController < ApplicationController

  def create
  	@movie = Movie.find(params[:movie_id])
  	@comment = @movie.comments.new(comment_params)
  	@comment.user = current_user
  	@comment.save
  	redirect_to movies_path(@movies)
  end

  def destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:user_id, :body, :rating)
    end

end
