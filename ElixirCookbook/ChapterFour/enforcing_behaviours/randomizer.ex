defmodule Randomizer do    
    @callback randomize(low::Integer.t, high::Integer.t) :: Integer.t
end
