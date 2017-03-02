class ExpendituresController < ApplicationController

  before_action :authenticate_user!

  def index

    @expenditure_data = Expenditure.where(user_id: current_user.id)

    respond_to do |format|
      format.html
      format.json { render json: @expenditure_data }
    end

  end

  def new
    @expenditure = Expenditure.new
  end

  def create
    current_user.expenditures.create(expenditure_params)
    redirect_to dashboards_path
  end

  private

  def expenditure_params
    params.require(:expenditure).permit(:amount, :name, :date)
  end


end
