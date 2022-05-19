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
      expect(@solver.factorial(2)).to eql(2)
    end
    it 'Should return one if the parameter is zero' do
      expect(@solver.factorial(0)).to eql(1)
    end
    it 'Shoud raise an exception if is not a positive number' do
      expect { @solver.factorial(-2) }.to raise_error WrongTypeOfArgument
    end
  end
end
