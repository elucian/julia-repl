# repl_demo main module
module main

include("demo.jl")
include("errors.jl")
include("ladder.jl")

using .Demo, .Errors, .Ladder

# REPL main menu
function menu()
  println("--------------")
  println("0 - quit")
  println("1 - hello")
  println("2 - for loop")
  println("3 - errors")
  println("4 - ladder")
  println("--------------")
end

# Single branch conditional
let
  option = 'x'
  menu()
  while option != '0'
    print("option:>") 
    option = read(stdin, Char)  
    s = readline()  
    if option == '1'
      println("hello world")
    elseif option == '2'   
      loop(1:5)
    elseif option == '3'
      error_test();
    elseif option == '4'
      ladder();      
    end #if
  end #while
end #let
print("Goodby!") 

end #module