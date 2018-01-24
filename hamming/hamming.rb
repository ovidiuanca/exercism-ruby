class Hamming
  def self.compute(first_dna, second_dna)
    raise ArgumentError if first_dna.size != second_dna.size

    (0...first_dna.size).count do |index|
      first_dna[index] != second_dna[index]
    end
  end
end

module BookKeeping
  VERSION = 3
end
