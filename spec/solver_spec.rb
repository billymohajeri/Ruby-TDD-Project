require_relative '../classes/solver'

describe Solver do
  before :each do
    @test_solver = Solver.new
  end

  describe '#factorial' do
    it 'returns factorial of a given number' do
      expect(@test_solver.factorial(5)).to eql(120)
      expect(@test_solver.factorial(1)).to eql(1)
      expect(@test_solver.factorial(0)).to eql(1)
    end

    it 'raises an error for negative input' do
      expect do
        @test_solver.factorial(-3)
      end.to raise_error(ArgumentError, 'Cannot calculate factorial of a negative number')
    end
  end

  describe '#reverse' do
    it 'returns reverse of a given string' do
      expect(@test_solver.reverse('Hello')).to eql('olleH')
      expect(@test_solver.reverse('')).to eql('')
      expect(@test_solver.reverse(' ')).to eql(' ')
      expect(@test_solver.reverse('111')).to eql('111')
      expect(@test_solver.reverse('123')).to eql('321')
      expect(@test_solver.reverse('AaBb')).to eql('bBaA')
    end
  end
end
