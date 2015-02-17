class DashboardController < ApplicationController
  def index
    @posts = Post.all
    @partners = Partner.all
  end

  def success
  end

  def contact
  end
end
