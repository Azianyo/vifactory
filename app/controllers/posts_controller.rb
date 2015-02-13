class PostsController < ApplicationController
  def new
  end

  def create
    @post = Post.find(params[:id])
    redirect_to root_path
  end

  def update
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id]).destroy
    redirect_to root_path
  end

  def show
  end
end
