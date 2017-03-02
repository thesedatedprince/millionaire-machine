class Dashboard

  def initialize(current_user)
    @current_user = current_user
  end

  def get_income
    if Income.where(:user_id => @current_user.id).present?
      Income.where(user_id: @current_user.id)
    else
      []
    end

  end

  def get_expenditure
    if Expenditure.where(:user_id => @current_user.id).present?
      Expenditure.where(user_id: @current_user.id)
    else
      []
    end
  end

  def get_projection
    if Projection.where(:user_id => @current_user.id).present?
      Projection.where(user_id: @current_user.id)
    else
      []
    end
  end

  def get_goal
    if Goal.where(:user_id => @current_user.id).present?
      Goal.where(user_id: @current_user.id)
    else
      []
    end
  end



end
