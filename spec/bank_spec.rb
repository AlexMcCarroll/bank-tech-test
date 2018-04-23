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

  describe 'shows balance' do
    it 'shows all transactions' do
      subject.deposit(8)
      subject.deposit(7)
      expect{ subject.print_all }.to output("87").to_stdout
    end
    it 'shows balance' do
      subject.deposit(6)
      subject.deposit(5)
      expect{ subject.print_balance }.to output("11").to_stdout
    end
  end
end
