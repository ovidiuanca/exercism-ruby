class Raindrops
  RAIN_SOUNDS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    result = RAIN_SOUNDS
              .keys
              .select { |k| number.modulo(k).zero? }
              .map { |k| RAIN_SOUNDS[k] }.join
              
    result.empty? ? number.to_s : result
  end
end

module BookKeeping
  VERSION = 3
end