def add num1, num2
  return num1 + num2
end

def subtract num1, num2
  return num1 - num2
end

def sum numbers
  sum = 0
  numbers.each {|i| sum += i}
  sum
end

def multiply numbers
  product = 1
  numbers.each {|i| product = product * i}
  product
end

def power num1, num2
  product = num1 ** num2
end

def factorial number
  product = 1
  if number == 0
    product =0
  else
  number.times {|i| product = product * (i + 1)}
  end

  product
end
