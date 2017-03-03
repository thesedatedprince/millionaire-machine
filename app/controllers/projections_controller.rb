class ProjectionsController < ApplicationController

  before_action :authenticate_user!

  def index

    @projection_data = Projection.where(user_id: current_user.id)

    respond_to do |format|
      format.html
      format.json { render json: @projection_data }
    end

  end

  def new
    @projection = Projection.new
  end

  def create
    if !(Projection.where(:user_id => current_user.id).present?)
      current_user.projections.create(projection_params)
    else
      flash[:alert] = 'Only permitted to store one projection'
    end
    redirect_to dashboards_path
  end

  private

  def projection_params
    params.require(:projection).permit(:projected_monthly_income, :projected_monthly_expenditure, :start_date )
  end
end
