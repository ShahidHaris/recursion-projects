puts 'fibonacci declared'

def fibs(number)
  return [0] if number == 0
  return [0, 1] if number == 1

  result = [0, 1]
  (2...number).each { |_| result << result[-1] + result[-2] }

  result
end

number = 8
fibonacci_sequence = fibs(number)
puts "The Fibonacci sequence of #{number} is #{fibonacci_sequence}"
