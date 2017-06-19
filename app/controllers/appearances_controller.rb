class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to appearance_path(@appearance)
    else
      render :new
    end
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  private

    def appearance_params
      params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end
