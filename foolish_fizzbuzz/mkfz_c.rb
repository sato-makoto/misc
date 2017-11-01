#!/usr/bin/env ruby
first = 1
last = ARGV[0].to_i

print <<MAIN
#include<stdio.h>
int main () {
MAIN

(first..last).each do |x|
  case true
  when x % 15 === 0
    print <<-FBEND
      printf("fuzzbuzz\\n");
    FBEND
  when x % 5 === 0
    print <<-BEND
      printf("buzz\\n");
    BEND
  when x % 3 === 0
    print <<-FEND
      printf("fizz\\n");
    FEND
  else
    print <<-NEND
      printf("#{x}\\n");
    NEND
  end
end

print <<END
  return 0;
}
END
