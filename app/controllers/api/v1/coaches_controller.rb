class API::V1::CoachesController < ApplicationController
  before_action :set_coach, only: %i[show update destroy]
  skip_before_action :require_login, only: %i[index show]

  def index
    @coaches = Coach
      .all
      .joins('JOIN user u ON u.id = coaches.user_id')
      .select(:id, :user_id, :fullname, :img_url)
    json_respons(@coaches)
  end

  def create
    @coach = Coach.create!(coach_params)
    json_respons(@coach, :created)
  end

  def show
    json_respons(@coach)
  end

  def update
    @coach.update(coach_params)
    head :no_content
  end

  def destroy
    @coach.destroy
    header :no_content
  end

  private

  def coach_params
    params.permit(:user_id)
  end

  def set_coach
    @coach = Coach.find(params[:id])
  end
end
