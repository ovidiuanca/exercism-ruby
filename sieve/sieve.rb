class Sieve
  def initialize(number)
    @number = number
  end

  def primes
    (2..@number).select { |number| is_prime?(number) }
  end

  def is_prime?(number)
    (2...number).all? { |n| number.modulo(n).positive? }
  end
end

module BookKeeping
  VERSION = 1
end