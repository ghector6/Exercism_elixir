defmodule LibraryFees do
  def datetime_from_string(string) do
    {:ok, n_dtime } = NaiveDateTime.from_iso8601(string)
    n_dtime
  end

  def before_noon?(datetime), do: if(datetime.hour < 12, do: true, else: false)

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
    diff = Date.diff(actual_return_datetime, planned_return_date)
    max(diff,0)
  end

  def monday?(datetime) do
    if(Date.day_of_week(datetime) == 1, do: true, else: false)
  end

  def calculate_late_fee(checkout, return, rate) do
    diff =
      checkout
      |> datetime_from_string()
      |> return_date()
      |> days_late(datetime_from_string(return))
    cond do
      diff <= 0 ->
        0
      monday?(datetime_from_string(return)) ->
        trunc(rate * diff / 2)
      true  ->
        trunc(rate * diff)
    end
  end
end

