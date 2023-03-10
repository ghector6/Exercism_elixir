defmodule Secrets do
  def secret_add(secret) do

    fn arg -> secret + arg end
    # Please implement the secret_add/1 function
  end

  def secret_subtract(secret) do
    fn arg -> arg -  secret end
    # Please implement the secret_subtract/1 function
  end

  def secret_multiply(secret) do
    fn arg -> arg * secret end
    # Please implement the secret_multiply/1 function
  end

  def secret_divide(secret) do
    fn arg -> Integer.floor_div(arg, secret) end
  end

  def secret_and(secret) do
    fn arg -> Bitwise.band(arg,secret) end

    # Please implement the secret_and/1 function
  end

  def secret_xor(secret) do
    # Please implement the secret_xor/1 function
  end

  def secret_combine(secret_function1, secret_function2) do
    # Please implement the secret_combine/2 function
  end
end
