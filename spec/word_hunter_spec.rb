require 'spec_helper'

describe 'WordHunter' do
  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['B', 'U', 'G'],
              ['J', 'U', 'S'],
              ['N', 'G', 'S']]
    words = 'BUG'

    expect(WordHunter.crosswords(matrix, words)).to eq 'BUG'
  end

  it 'Espera que retorne em ordem alfabética' do
    matrix = [['J', 'U', 'S'],
              ['B', 'U', 'G'],
              ['N', 'G', 'S']]
    words = 'SUJ BUG'

    expect(WordHunter.crosswords(matrix, words)).to eq 'BUG SUJ'
  end
end
