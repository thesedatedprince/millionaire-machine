class GoalsController < ApplicationController



    def new
      @goal = Goal.new
    end

    def create
      Goal.create(goal_params)
      redirect_to '/dashboards'
    end

    def goal_params
      params.require(:goal).permit(:amount, :name, :start_date, :target_date)
    end

end
