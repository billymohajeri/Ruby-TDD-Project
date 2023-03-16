# require 'rspec'
require_relative '../classes/solver'

describe Solver do
  before :each do
    @test_fact = Solver.new
  end

  describe 'factorial' do
    it 'returns factorial of a given number' do
      expect(@test_fact.factorial(5)).to eql(120)
      expect(@test_fact.factorial(1)).to eql(1)
      expect(@test_fact.factorial(0)).to eql(1)
    end


    it 'raises an error for negative input' do
      expect do
        @test_fact.factorial(-3)
      end.to raise_error(ArgumentError, 'Cannot calculate factorial of a negative number')
    end
  end
end
