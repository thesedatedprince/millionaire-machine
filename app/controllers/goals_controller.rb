class GoalsController < ApplicationController



    def new
      @goal = Goal.new
    end

    def create
      Goal.create(params[:user])
      redirect_to '/dashboards'
    end
  
end
