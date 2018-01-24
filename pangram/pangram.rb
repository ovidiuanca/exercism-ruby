class Pangram 
  ALPHABET = ('a'..'z')

  def self.pangram?(phrase)
    ALPHABET.all? { |c| phrase.chars.map(&:downcase).include?(c) }
  end
end

module BookKeeping
  VERSION = 6
end