class CommentsController < ApplicationController

  def create
  	@movie = Movie.find(params[:movie_id])
  	@comment = @movie.comments.new(comment_params)
  	@comment.user = current_user
  	respond_to do |format|
      if @comment.save
        format.html {redirect_to @movie, notice: 'Review was created successfully'}
        format.json {render :show, status: :created, location: @movie}
      else
        if user_signed_in? 
          format.html { redirect_to @movie, alert: 'Review was not saved successfully'}
          format.json {render json: @comment.errors, status: :unprocessable_entity }
        else 
          format.html { redirect_to @movie, alert: 'You must be logged in to write a review'}
          format.json {render json: @comment.errors, status: :unprocessable_entity }        
        end 
      end
    end
  end

  def destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:user_id, :body, :rating)
    end

end
