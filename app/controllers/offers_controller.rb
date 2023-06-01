class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end
  def new
    @project = Project.find(params[:project_id])
    @offer = Offer.new
  end

  def edit
    @offer = Offer.find(params[:project_id])
    @offer.offer_status = true
    @offer.save
    redirect_to project_path(@offer.project)
  end

  def create
    @project = Project.find(params[:project_id])
    @offer = Offer.new(offer_params)
    @offer.project = @project
    @offer.user_id = @project.user_id
    if @offer.save
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to project_path(@offer.project), status: :see_other
  end

  private

  def offer_params
    params.require(:offer).permit(:comment)
  end
end
