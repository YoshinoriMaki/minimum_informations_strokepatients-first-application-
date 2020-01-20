class InformationsController < ApplicationController

  def index #今回は１人分のデータしか表示しないので必要ないかも
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(post_params)

    if @information.save
      redirect_to @information # saveしたらshow actionへ移動するように記載変更
    else
      render 'new'
    end
  end

  def update
    @information = Information.find([:id])

    if @information.update(post_params)
      redirect_to @information
    else
      render 'edit'
    end

  end

  def destroy
    @information = Information.find([:id])
    information.destroy

    redirect_to #top pageに移動するように設定する
  end

  def edit
    @information = Information.find([:id])
  end

  def show
    @information = Information.find([:id])
  end

  private

  def post_params
   params.requires(:information).permit(:intracranial_hemorrhage, :infraction_episodes, :usage_antithrombotic, :usage_antithrombotic, :hypertension, :medication_hypertension, :diabetes, :medication_diabetes, :hyperlipidemia, :medication_hyperlipidemia, :liver_malfunction, :kidney_malfunction, :residence, :activity_outside, :activity_inside)
  end
  
end


