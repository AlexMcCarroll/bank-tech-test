require 'history'

describe History do

  subject(:history) { History }

  let(:dummy_history) { double :history,
                        grouped_history: nil,
                        account_history: [{:date=>"23/04/2018", :credit=>10, :debit=>"", :balance=>10}]
                      }

  describe 'account history' do

    it 'stores a hash inside account_history' do
      expect(dummy_history.account_history).to eq([{:date=>"23/04/2018", :credit=>10, :debit=>"", :balance=>10}])
    end
  end

end
