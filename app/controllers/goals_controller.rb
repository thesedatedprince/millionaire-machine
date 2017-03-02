class GoalsController < ApplicationController

  before_action :authenticate_user!

    def index

      @goal_data = Goal.where(user_id: current_user.id)

      respond_to do |format|
        format.html
        format.json { render json: @goal_data }
      end

    end

    def new
      @goal = Goal.new
    end

    def create
      if !(Goal.where(:user_id => current_user.id).present?)
        current_user.goals.create(goal_params)
        redirect_to dashboards_path
      else
        flash[:alert] = 'Only permitted to store one goal'
        redirect_to dashboards_path
      end

    end

    def goal_params
      params.require(:goal).permit(:amount, :name, :start_date, :target_date)
    end


end
