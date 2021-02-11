defmodule Practice.Factorize do

  def factorize(n) do
    
    
    defmodule Loop do
      def get_factors(n, i, list) when n == 1 do
        list
      end
      
      def get_factors(n, i, list) do
        if rem(n,i) == 0 do
	  get_factors(trunc(n / i), 2,list++[i]) 
        else
          get_factors(n, i + 1,list)
        end
      end
    end
    Loop.get_factors(n,2,[])
  end
end
