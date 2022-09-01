class StagesController < ApplicationController
  def index
    @stages = Stage.all
  end

  def new
    @stage = Stage.new
  end

  def create
    @stage = Stage.new(stage_params)
    @stage.save

  redirect_to stages_path(@stages)

  end

  def show
    @stage = Stage.find(params[:id])
  end

  def destroy
    @stage = Stage.find(params[:id])
    @stage.destroy

    redirect_to stages_path(@stages)
  end


  private

  def stage_params
    params.require(:stage).permit(:title, :date, :participants, :price, :place, :description)
  end

end
