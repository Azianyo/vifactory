class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    if @post = Post.create(post_params)
      flash[:success] = "Post został utworzony"
      redirect_to @post
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:success] = "Post został wyedytowany"
      redirect_to @post
    else
      flash[:warning] = "Post nie został poprawnie wyedytowany"
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
    params.require(:post).permit(:title, :content, :issuccess)
  end
end
