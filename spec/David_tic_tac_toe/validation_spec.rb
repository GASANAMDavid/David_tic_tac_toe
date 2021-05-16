require_relative '../../lib/David_tic_tac_toe/validation'

RSpec.describe Validation do
  let(:input) { '12 , 12,a' }
  it "should return false if input is not separated by a single comma" do
    expect(subject.validate_input(input)).to eq false
  end

  it "should return false if input contains a non numeric character" do
    expect(subject.validate_input('12,a')).to eq false
  end

  context ".validate_position" do
    let(:index) { [4, 3] }
    let(:board) { [%w[_ _ _], %w[_ _ _], %w[X _ _]] }
    it "should return false if index is out of range" do
      expect(subject.validate_position(index, board)).to eq false
    end

    it "should return false if index was already played" do
      expect(subject.validate_position([2, 0], board)).to eq false
    end
  end
end
