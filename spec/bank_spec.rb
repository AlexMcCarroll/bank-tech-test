require 'bank'

describe Bank do

  before(:each) do
    subject = Bank.new
  end

  describe 'bank balance' do
    it 'can deposit money' do
      subject.deposit(10)
      expect(subject.balance).to eq(10)
    end
    it 'can withdraw money' do
      subject.deposit(10)
      subject.withdraw(9)
      expect(subject.balance).to eq(1)
    end
  end
end
