class IncomesController < ApplicationController


  def new
    @income = Income.new

  end

  def create
    if actual?
      Income.create(income_params)
    else
  array = generate_date_array(income_params[:date])

  array.each do |i|
      Income.create(amount: income_params[:amount],
                   name: income_params[:name], date: i,
                   frequency: income_params[:frequency],
                   actual: income_params[:actual])
            end
    end
    redirect_to '/'
  end

  private

  def income_params
    params.require(:income).permit(:amount, :name, :date, :frequency, :actual)
  end

  def generate_date_array(params_date)
     date_from  = Date.parse(params_date)
     date_to = params_date.to_date >> 12
     date_range = date_from..date_to
     date_months = date_range.map {|d| Date.new(d.year, d.month, 1) }.uniq
     date_months.map {|d| d.strftime "%d/%m/%Y" }
  end

  def actual?
    income_params[:actual] == true
  end




end
