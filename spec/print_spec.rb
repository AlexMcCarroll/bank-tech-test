require 'print'

describe Print do

  subject(:print) { Print.new }
  let(:dummy_bank) { double :bank }
  let(:dummy_transaction) {
    double :history,
      date: "23/04/2018",
      credit: 10,
      debit: "",
      balance: 10
      }

  describe 'shows balance' do
    it 'prints header' do
      expect{ subject.print_header }.to output("date || credit || debit || balance\n").to_stdout

    end
    it 'shows all transactions' do
      dummy_bank.account_history << dummy_transaction
      expect{ subject.print_body }.to output("23/04/2018 || 10 ||  || 10").to_stdout
    end
  end
end
