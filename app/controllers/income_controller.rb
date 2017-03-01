class IncomeController < ApplicationController

  def index

    @income_data = Income.all

    respond_to do |format|
      format.html
      format.json { render json: @income_data }
    end

  end

end
