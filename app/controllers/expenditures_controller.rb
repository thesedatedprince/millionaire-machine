class ExpendituresController < ApplicationController

  def index

    @expenditure_data = Expenditure.all

    respond_to do |format|
      format.html
      format.json { render json: @expenditure_data }
    end

  end

  def new
    @expenditure = Expenditure.new
  end

  def create
    Expenditure.create(expenditure_params)
    redirect_to dashboards_path
  end

  private

  def expenditure_params
    params.require(:expenditure).permit(:amount, :name, :date)
  end


end
