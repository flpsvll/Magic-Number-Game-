puts 'choose a number'

digit = [ 4, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8 ]
decade = [4, 3, 6, 6, 5, 5, 5, 7, 6, 6]

puts (1..1000).inject(0) { |sum, n|
  if n > 999
    sum += 11
    n = n % 1000
  end

  if n > 99
    sum += digit[n / 100] + 7
    if n % 100 > 0
      sum += 3
    end
    n = n % 100
  end

  if n > 19
    sum += decade[n / 10]
    n = n % 10
  end

  if n > 0
    sum += digit[n]
  end

  sum
}