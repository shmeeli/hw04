defmodule Practice do
  @moduledoc """
  Practice keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def double(x) do
    2 * x
  end

  def calc(expr) do
    # This is more complex, delegate to lib/practice/calc.ex
    Practice.Calc.calc(expr)
  end

  def factor(x) do
    # Maybe delegate this too.
    Practice.Factorize.factorize(x)
  end

  def palindrome(x) do 
    y = String.downcase(x)
    z = String.reverse(y)
    y === z
  end
     


  # TODO: Add a palindrome? function.
end
