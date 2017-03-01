class Dashboard

  def get_income
    @income_data = Income.all
  end

  def get_expenditure
    @expenditure_data = Expenditure.all
  end

end
