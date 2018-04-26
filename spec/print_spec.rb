require 'print'

describe Printer do
  subject(:printer) { Printer.new }

  let(:dummy_history) { double :history,
                        grouped_history: nil,
                        account_history: [{:date=>"22/04/2018", :credit=>1, :debit=>"", :balance=>1}]
                      }

  describe 'shows balance' do

    it 'prints header' do
      expect{ printer.print_header }.to output("date || credit || debit || balance\n").to_stdout
    end
    it 'shows all transactions' do
      expect{ printer.print_body(dummy_history) }.to output("22/04/2018 || 1 ||  || 1\n").to_stdout
    end
  end
end
