#!/usr/bin/env ruby

operators = ["+", "-", "*", "/"]

for one in operators
  for two in operators
    for three in operators
      for four in operators
        for five in operators
          for six in operators
            for seven in operators
              for eight in operators
	        formula = "1 #{one} 2 #{two} 3 #{three} 4 #{four} 5 #{five} 6 #{six} 7 #{seven} 8 #{eight} 9"
		 total = eval(formula) 
                if total == 100 then
		  puts formula + " = " + String(total)
		end  

              end
            end
          end
        end
      end
    end
  end
end
