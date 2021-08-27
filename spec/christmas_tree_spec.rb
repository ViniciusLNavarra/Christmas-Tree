# frozen_string_literal: true

require 'christmas_tree'

RSpec.describe ChristmasTree do
  subject(:christmas_tree) { described_class.new.draw(height)}
  
  let(:height) {5}
  let(:tree_characters_count) { christmas_tree.count(described_class::TREE_CHARACTER) }
  let(:tree_lines_count) {christmas_tree.count("\n")}

  it 'draws the christmas tree correctly' do
    i=1
    for line in christmas_tree.each_line
      expect(line.count('X')).to eq(i)
      i+=2
    end
  end

  context 'with star and tree stand' do
    subject(:christmas_tree) {described_class.new.draw(height, stand, star)}

    let(:height) {10}
    let(:star) {true}
    let(:stand) {true}

    it 'draws the christmas tree correctly' do
      i=1
      for line in christmas_tree.each_line
        if (line.count('*')>=1)    
          expect(christmas_tree.count('*')).to eq(1)
        elsif (line.count('|')>=1)    
          expect(christmas_tree.count('|')).to eq(1)
        else
          expect(line.count('X')).to eq(i)
          i+=2
        end
      end
    end
  end
end
