class History

  @@account_history = []

  def self.grouped_history(hash)
    @@account_history << hash
  end

  def self.account_history
    @@account_history
  end

end
