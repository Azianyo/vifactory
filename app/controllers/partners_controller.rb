class PartnersController < ApplicationController
  def create
  	if @partner = Partner.create(partner_params)
  	redirect_to root_path
  	end
  end

  def update
  	 @partner = Partner.find(params[:id])
    if @partner.update_attributes(partner_params)
      flash[:success] = "Post został wyedytowany"
      redirect_to root_path
    end
  end

  def destroy
  	Partner.find(params[:id]).destroy
    redirect_to root_path
  end

  def partner_params
    params.require(:partner).permit(:photo)
  end

end
