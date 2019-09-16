class Bank
  def open_safe
    # ...
  end

  def close_safe
    # ...
  end

  private :open_safe, :close_safe

  def make_withdrawal(amount)
    if access_allowed
      open_safe
      get_cash
      close_safe
    end
  end

  # остальное - приватное

  private

  def get_cash
    # ...
  end

  def access_allowed
    true
  end
end