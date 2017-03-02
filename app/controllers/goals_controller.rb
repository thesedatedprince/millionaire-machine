class GoalsController < ApplicationController

  before_action :authenticate_user!
  
    def index

      @goal_data = Goal.all

      respond_to do |format|
        format.html
        format.json { render json: @goal_data }
      end

    end

    def new
      @goal = Goal.new
    end

    def create
      if !goal_count?
        Goal.create(goal_params)
      else
        flash[:notice] = 'Error'
      end
        redirect_to dashboards_path
    end

    def goal_params
      params.require(:goal).permit(:amount, :name, :start_date, :target_date)
    end

    private

    def goal_count?
   p Goal.count(current_user.id)
      Goal.count(current_user.id) == 1
    end

end
