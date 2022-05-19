require './solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end
  describe '#new' do
    it 'Should create a new class' do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  describe '#factorial' do
    it 'Should return the result' do
      expect(@solver.factorial(4)).to eql(24)
    end
    it 'Should return one if the parameter is zero' do
      expect(@solver.factorial(0)).to eql(1)
    end
    it 'Should raise an exception if is not a positive number' do
      expect { Solver.new.factorial(-2) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'Should return the reversed string' do
      expect(@solver.reverse('hola')).to eql('aloh')
    end

    it 'Should raise an exception if is not a string' do
      expect { Solver.new.reverse(2) }.to raise_error(ArgumentError)
    end
  end

  describe '#fizzbuzz' do
    it 'Should return the result' do
      expect(@solver.fizzbuzz(15)).to eql('fizzbuzz')
    end
    it 'Should return the result' do
      expect(@solver.fizzbuzz(5)).to eql('buzz')
    end
    it 'Should return the result' do
      expect(@solver.fizzbuzz(3)).to eql('fizz')
    end
    it 'Should return the result' do
      expect(@solver.fizzbuzz(2)).to eql("2")
    end
  end
end
