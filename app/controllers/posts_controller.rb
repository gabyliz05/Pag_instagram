class PostsController < ApplicationController
  def new
    def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(permit_post)
      flash[:success] = "Post updated successfully!"
      redirect_to post_path(@post)
    else
      flash[:error] = @post.errors.full_messages
      redirect_to edit_post_path(@post)
    end
  end
  end

  def index
  end

  def show
  end
end
