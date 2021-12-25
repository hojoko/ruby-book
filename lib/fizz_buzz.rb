puts 'Hello, World!'

def fizz_buzz(n)
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n
  end
end

(0..15).each { |i| puts fizz_buzz(i) } 
