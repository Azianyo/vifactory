class DashboardController < ApplicationController
  def index
    @posts = Post.all.paginate(:page => params[:page], :per_page => 5)
    @partners = Partner.all
  end

  def success
  	@posts = Post.all.paginate(:page => params[:page])
  end

  def contact
  end
end
