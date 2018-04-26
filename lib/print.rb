require_relative 'history.rb'

class Printer

  def print_header
    puts "date || credit || debit || balance"
  end

  def print_body(history = History)
    history.account_history.each do |x|
      puts "#{x[:date]} || #{x[:credit]} || #{x[:debit]} || #{x[:balance]}"
    end
  end

end
