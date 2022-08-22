f(x)= sqrt(x)-cos(x)

error = 10^-4

function bisection(a,b)
  x=(a+b)/2
  while abs(f(x)) > error
    if f(a)*f(x) > 0
      a = x
    else
      b = x
    end
    x = (a+b)/2
  end
  return x
end

r = bisection(0,1)
println(r)