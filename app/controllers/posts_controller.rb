class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    flash[:success] = "Post został utworzony"
    redirect_to @post
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:success] = "Post został wyedytowany"
      redirect_to @post
    else
      render :action => "edit"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id]).destroy
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :issucces)
  end
end
