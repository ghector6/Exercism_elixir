defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * (8 / 1)
    # Please implement the daily_rate/1 function
  end

  def apply_discount(before_discount, discount) do
    before_discount - (before_discount * discount / 100)
    # Please implement the apply_discount/2 function
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
      ceil(apply_discount(daily_rate(hourly_rate * 22), discount))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    budget / apply_discount(daily_rate(hourly_rate), discount) 
    # Please implement the days_in_budget/3 function
  end
end
