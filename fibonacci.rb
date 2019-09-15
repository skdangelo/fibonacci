require 'benchmark'
num = 35;
puts recursive_fib(num)
puts iterative_fib(num)
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end

def recursive_fib(n)
  if (n <= 1 )
    return n
  end
  return recursive_fib(n-1) + recursive_fib(n-2)
end

def iterative_fib(n)
  var seq = []
  i = 0
  while <= n
      if (i <= 1) 
        seq[i] = i;
      else
        seq[i] = seq[i-1] + seq[i-2]
      end
      i += 1
  end
  return seq[n]
end