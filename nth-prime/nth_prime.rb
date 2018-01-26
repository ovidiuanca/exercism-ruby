class Prime
  def self.nth(number)
    raise ArgumentError if number.zero?

    (2..Float::INFINITY).lazy
                        .select { |n| is_prime?(n) }
                        .first(number)
                        .last
  end

  def self.is_prime?(number)
    (2..number / 2).none? { |n| number.modulo(n).zero? }
  end
end

module BookKeeping
  VERSION = 1
end