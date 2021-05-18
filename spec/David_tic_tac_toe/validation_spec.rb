require_relative '../../lib/David_tic_tac_toe/validation'

RSpec.describe Validation do
  let(:input) { '12 , 12,a' }
  context '.validate_input' do
    it "should return false if user entered an input without a comma" do
      expect(subject.validate_input('1 ')).to eq false
    end

    it "should return false if entered multiple comma separated inputs" do
      expect(subject.validate_input('12,3,4,5,6')).to eq false
    end

    it "should return false if input contains a non numeric character" do
      expect(subject.validate_input('12,   a ')).to eq false
    end

    it "should return true if input is separated by a single comma and contains only numeric characters" do
      expect(subject.validate_input('1,2')).to eq true
    end
  end

  context "validates positions as valid or invalid" do
    let(:board) { [%w[_ _ _], %w[_ _ _], %w[X _ _]] }

    it "should return false if index is out of range" do
      expect(subject.validate_position([4, 3], board)).to eq false
    end

    it "should return true if index is in range" do
      expect(subject.validate_position([2, 1], board)).to eq true
    end

    it "should return false if index was already played" do
      expect(subject.validate_position([2, 0], board)).to eq false
    end
  end
end
