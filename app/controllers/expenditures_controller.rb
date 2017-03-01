class ExpendituresController < ApplicationController

  def new
  @expenditure = Expenditure.new
  end

  def create
    if actual?
      Expenditure.create(expenditure_params)
    else
  array = generate_date_array(expenditure_params[:date])

  array.each do |i|
      Expenditure.create(amount: expenditure_params[:amount],
                   name: expenditure_params[:name], date: i,
                   frequency: expenditure_params[:frequency],
                   actual: expenditure_params[:actual])
            end
    end
    redirect_to '/'
  end

  private

  def expenditure_params
    params.require(:expenditure).permit(:amount, :name, :date, :frequency, :actual)
  end

  def generate_date_array(params_date)
     date_from  = Date.parse(params_date)
     date_to = params_date.to_date >> 12
     date_range = date_from..date_to
     date_months = date_range.map {|d| Date.new(d.year, d.month, 1) }.uniq
     date_months.map {|d| d.strftime "%d/%m/%Y" }
  end

  def actual?
    expenditure_params[:actual] == true
  end
end
