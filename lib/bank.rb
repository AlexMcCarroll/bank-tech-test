class Bank

  attr_reader :account_history

  def initialize
    @account_history = []
  end

  def balance
    @account_history.inject(:+)
  end

  def withdraw(amount)
    @account_history << (-amount)
  end

  def deposit(amount)
    @account_history << (amount)
  end

end
