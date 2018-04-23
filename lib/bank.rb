class Bank

  attr_reader :account_history, :balance, :date_created, :credit, :debit

  def initialize
    @account_history = []
    @balance = 0
    @date_created = Time.now.strftime("%d/%m/%Y")
    @credit = ""
    @debit = ""
  end

  def withdraw(amount)
    @balance -= amount
    moving_money(amount)
  end

  def deposit(amount)
    @balance += amount
    moving_money(amount)
  end

  def print_all
    puts "date || credit || debit || balance"
    @account_history.each do |x|
        puts "#{x[:date]} || #{x[:amount]} || #{x[:balance]}"
    end
  end

  def print_balance
    print @balance
  end

  private

  def moving_money(amount)
    transaction = {}
    transaction[:date] = @date_created
    transaction[:amount] = amount
    transaction[:balance] = @balance
    @account_history << transaction
  end
end
