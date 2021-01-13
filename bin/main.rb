#!/usr/bin/env ruby
def pascal_triangle(n)
    if n > 10
        puts("[ERROR] %d is too big" % n);
        return;
    end

  puts("[OUTPUT] ");
  for i in 0..n-1 do
    c = 1;
    o = [];
    for k in 0..i do
      o.push(c);
      c = c * (i-k)/(k+1);
    end
    puts("%s" % o.join(" "));
  end
end

# Driver Program to test above function
def main()
    input = 10;
    puts("[INPUT] %d" % input);
    pascal_triangle(input);
end
main;
