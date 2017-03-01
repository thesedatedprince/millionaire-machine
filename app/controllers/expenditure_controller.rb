class ExpenditureController < ApplicationController

  def index

    @expenditure_data = Expenditure.all

    respond_to do |format|
      format.html
      format.json { render json: @expenditure_data }
    end

  end

end
