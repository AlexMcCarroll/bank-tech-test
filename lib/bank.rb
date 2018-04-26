require_relative 'history.rb'

class Bank

  attr_accessor :balance, :date_created, :credit, :debit

  def initialize
    @balance = 0
    @date_created = Time.now.strftime("%d/%m/%Y")
    @credit = ""
    @debit = ""
  end

  def withdraw(amount)
    new_amount = -amount
    @balance -= amount
    moving_money(new_amount)
  end

  def deposit(amount)
    @balance += amount
    moving_money(amount)
  end

  private

    def moving_money(amount)
      transaction = {}
      transaction[:date] = date_created
      if amount > 0
        transaction[:credit] = amount
        transaction[:debit] = ""
      else
        transaction[:credit] = ""
        transaction[:debit] = amount.abs
      end
      transaction[:balance] = @balance
      History.grouped_history(transaction)
    end
end
