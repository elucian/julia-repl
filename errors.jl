module Errors

export error_test

  # catching an error
  function error_test()
    x = 0
    y = 1
    try
        z = y/x
        println("z = $z")
        if z == Inf
          throw(DivideError())
        end
    catch err
        if isa(err, DivideError)
            println("error division by zero")
        end
    end
  end
end