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
      dummy_transaction = {:date=>"23/04/2018", :amount=>10, :balance=>10}
      subject.account_history << dummy_transaction
      expect{ subject.print_all }.to output("date || credit || debit || balance\n23/04/2018 || 10 || 10\n").to_stdout
    end

    it 'shows balance' do
      subject.deposit(6)
      subject.deposit(5)
      expect{ subject.print_balance }.to output("11").to_stdout
    end
  end

end
