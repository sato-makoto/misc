#!/usr/bin/env lua5.3
expr = {}
expr[1] = '+'
expr[2] = '-'
expr[3] = '*'
expr[4] = '/'

for one = 1,4,1 do
  for two = 1,4,1 do
    for three = 1,4,1 do
      for four = 1,4,1 do
        for five = 1,4,1 do
          for six = 1,4,1 do
            for seven = 1,4,1 do
              for eight = 1,4,1 do
                assert(loadstring('total =' ..
                      '1'..expr[one].. 
                      '2'..expr[two]..
                      '3'..expr[three]..
                      '4'..expr[four]..
                      '5'..expr[five]..
                      '6'..expr[six]..
                      '7'..expr[seven]..
                      '8'..expr[eight]..
                      '9'))()
                if total == 100 then
                  print (
                       '1 '..expr[one].. 
                      ' 2 '..expr[two]..
                      ' 3 '..expr[three]..
                      ' 4 '..expr[four]..
                      ' 5 '..expr[five]..
                      ' 6 '..expr[six]..
                      ' 7 '..expr[seven]..
                      ' 8 '..expr[eight]..
                      ' 9 '..' = '..tostring(total))
                end
              end
            end
          end
        end
      end
    end
  end
end
