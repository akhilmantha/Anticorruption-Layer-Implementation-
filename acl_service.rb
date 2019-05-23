class TimeCreaditCardService

  def initialize(credit_card_service)
    @credit_card_service = credit_card_service
  end

  def get_card_from_account(account_number)
    measure { @credit_card_service.get_card_from_account(account_number) }
  end

  def measure
    start = Time.now
    result = yield
    finish = Time.now
    @delta = finish - start # in seconds
    return result
  end

  def get_time
    puts "Time elapsed #{(@delta)*1000} milliseconds"
  end

end
