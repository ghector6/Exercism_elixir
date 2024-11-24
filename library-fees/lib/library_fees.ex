defmodule LibraryFees do
  def datetime_from_string(string) do
    {:ok, n_dtime } = NaiveDateTime.from_iso8601(string)
    n_dtime
  end

  def before_noon?(datetime), do: if datetime.hour < 12, do: true, else: false

  def return_date(checkout_datetime) do
    day_range = before_noon?(checkout_datetime)
    case day_range do
      true ->
        Date.add(checkout_datetime, 28)
      false ->
        Date.add(checkout_datetime, 29)
    end
  end


  def days_late(planned_return_date, actual_return_datetime) do
    Date.diff(actual_return_datetime, planned_return_date)
  end

  def monday?(datetime) do
    # Please implement the monday?/1 function
  end

  def calculate_late_fee(checkout, return, rate) do
    # Please implement the calculate_late_fee/3 function
  end
end
