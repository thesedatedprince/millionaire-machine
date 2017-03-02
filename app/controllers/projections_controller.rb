class ProjectionsController < ApplicationController
  def new
    @projection = Projection.new
  end

  def create
    Projection.create(projection_params)
    redirect_to dashboards_path
  end

  private

  def projection_params
    params.require(:projection).permit(:projected_monthly_income, :projected_monthly_expenditure, :start_date )
  end
end
