require_relative 'history.rb'

class Printer

  def print_header
    puts "date || credit || debit || balance"
  end

  def print_body(history = History)
    x = history.account_history.reverse
    x.each do |y|
      puts "#{y[:date]} || #{y[:credit]} || #{y[:debit]} || #{y[:balance]}"
    end
  end

  def print_all
    print_header
    print_body
  end

end
