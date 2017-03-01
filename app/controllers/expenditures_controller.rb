class ExpendituresController < ApplicationController

  def new
  @expenditure = Expenditure.new
  end

  def create
    Expenditure.create(expenditure_params)
    redirect_to '/'
  end

  private

  def expenditure_params
    params.require(:expenditure).permit(:amount, :name, :date)
  end

  
end
