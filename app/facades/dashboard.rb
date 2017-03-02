class Dashboard

  def initialize(current_user)
    @current_user = current_user
  end

  def get_income
    p "In model"
    p Income.where(:user_id => @current_user.id).present?
    if Income.where(:user_id => @current_user.id).present?
      Income.where(user_id: @current_user.id)
    else
      []
    end

  end

  def get_expenditure
    @expenditure_data = Expenditure.all
  end



  # def income_exists
  #   p Income.exists?(user_id: @current_user.id)
  # end

end
