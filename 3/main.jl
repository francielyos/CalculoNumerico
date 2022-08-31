f(x)= sqrt(x)-cos(x)
f1(x)= sqrt(x)-cos(x)
f2(x)= 5*sin(x^2)-MathConstants.e^(x/10)

error = 10^-4

function bisection(a,b,f)
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

r = bisection(0,1,f1)
println(r)

r = bisection(0,1,f2)
println(r)

r = bisection(0,1,f3)
println(r)