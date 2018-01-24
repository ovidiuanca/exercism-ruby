class Complement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(dna)
    res = dna.chars.map { |c| DNA_TO_RNA[c] }.join
    res.size != dna.size ? '' : res
  end
end

module BookKeeping
  VERSION = 4
end
