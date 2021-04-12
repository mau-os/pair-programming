class WordHunter
  def self.crosswords(matrix, words)
    splited_words = words.split
    captured_words = []
    result = []
    complete_matrix = matrix + matrix.transpose
    complete_matrix.each do |array|
      captured_words << array.join
      captured_words << array.join.reverse
    end

    result = captured_words & splited_words
    
    result.sort.join(' ')
  end
end
