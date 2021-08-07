class AppointementsController < ApplicationController
  before_action :ser_user
  before_action :set_user_appointement, only: %i[show update destroy]

  def index
    @appointements = User
      .joins("JOIN  appointements a ON a.user_id = users.id
              JOIN coaches t ON t.user_id = a.coach_id
              JOIN users ut ON ut.id = t.user_id")
      .select('a.id, a.start_at, a.user_id pacient_id, a.created_at,
        a.coach_id, ut.fullname coach_name,
        users.fullname pacient_name')
    json_respons(@appointements)
  end

  def show
    json_respons(@appointements)
  end

  def create
    @user.appointements.create!(appointemet_params)
    json_respons(@user, :created)
  end

  def destroy
    @appointement.destroy
    head :no_content
  end

  private

  def appointement_params
    params.permit(:user_id, :coach_id, :start_at)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_appointement
    @appointement = @user.appointements.find_by(id: params[:id]) if @user
  end
end
