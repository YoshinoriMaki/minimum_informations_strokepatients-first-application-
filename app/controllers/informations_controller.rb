class InformationsController < ApplicationController

  def index #今回は１人分のデータしか表示しないので必要ないかも
    @informations = Information.all
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)

    if @information.save
      redirect_to @information 
    else
      render :new
    end
  end

  def update
    @information = Information.find(params[:id])

    if @information.update(information_params)
      redirect_to @information
    else
      render :edit
    end

  end

  def destroy
    @information = Information.find(params[:id])
    information.destroy

    # redirect_to new_user_path #top pageに移動するように設定する
  end

  def edit
    @information = Information.find(params[:id])
  end

  def show
    @information = Information.find(params[:id])
  end

  private

  def information_params
   params.require(:information).permit(:intracranial_hemorrhage, :infraction_episodes, :usage_antithrombotic, :usage_antithrombotic, :hypertension, :medication_hypertension, :diabetes, :medication_diabetes, :hyperlipidemia, :medication_hyperlipidemia, :liver_malfunction, :kidney_malfunction, :residence, :activity_outside, :activity_inside)
  end
  
end


