def add(number1, number2)
	number1 + number2
end

def sum(numbers)
	numbers.sum
end

def subtract(number1, number2)
	number1 - number2
end

def multiply(numbers)
	total = 1
	numbers.each do |number|
		total *= number
	end
	return total
end

def power(number1, number2)
	number1 ** number2
end

def factorial(number_to_facto)
	return 0 if number_to_facto == 0
	total = 1
	(1..number_to_facto).select {|number| total *= number}
	return total
end