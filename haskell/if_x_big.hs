bigger x y = if x > y then x * 2 else y * 3

smaller x y = if x > y then y * 2
              else if x < y then x * 3
              else  x + y

fz x = if mod 15 x == 0 then "fizzbuzz"
       else if mod 5 x == 0 then "buzz"
       else if mod 3 x == 0 then "fizz"
       else x
