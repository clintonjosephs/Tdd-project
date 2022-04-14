require_relative '../solver'

describe Solver do
  before :all do
    @solver = Solver.new
  end

  context 'when solving a factorial' do
    it 'should be an instance of solver' do
      expect(@solver).to be_an_instance_of Solver
    end

    it 'returns factorial 5 is 120' do
      expect(@solver.factorial(5)).to eq(120)
    end

    it 'returns factorial 3 is 120' do
      expect(@solver.factorial(3)).to eq(6)
    end

    it 'returns factorial of 0 as 1' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'throws exception when negative number is passed' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  context 'when solving a reverse' do
    it 'returns the reverse of hello string' do
      expect(@solver.reverse_str('hello')).to eq('olleh')
    end

    it 'returns the reverse of internet string' do
      expect(@solver.reverse_str('internet')).to eq('tenretni')
    end
  end
end
