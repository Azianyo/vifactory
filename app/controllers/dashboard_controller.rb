class DashboardController < ApplicationController
  def index
    @posts = Post.all
  end

  def success
  end

  def contact
  end
end
