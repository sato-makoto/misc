#!/usr/bin/env ruby
fary = Array.new(9)
if ARGV.size < 9 then
  for i in 9.times
    fary[i] = i+1.to_f
  end
else 
  for i in 9.times
    fary[i] = ARGV[i].to_f
  end
end

operators = ["+", "-", "*", "/"]

for one in operators
  for two in operators
    for three in operators
      for four in operators
        for five in operators
          for six in operators
            for seven in operators
              for eight in operators
	        formula = \
                  "#{fary[0]} #{one} #{fary[1]} #{two} " + \
                  "#{fary[2]} #{three} #{fary[3]} #{four} " + \
                  "#{fary[4]} #{five} #{fary[5]} #{six} " + \
                  "#{fary[6]} #{seven} #{fary[7]} #{eight} " + \
                  "#{fary[8]}"
		total = eval(formula) 
                if total  == 100 then
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
