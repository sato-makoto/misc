#!/usr/bin/env ruby

a, b, c , d, e, f, g, h , i =  ARGV

a = a.to_i;  b = b.to_i;  c = c .to_i
d = d.to_i;  e = e.to_i;  f = f.to_i
g = g.to_i;  h = h.to_i;  i = i.to_i

puts a + 13.0 * b / c + d + 12 * e - f - 11 + g * h / i - 10
