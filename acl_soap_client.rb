class SoapClientWrapper

  def get_card_data(account_number)
    foreign_cards = get_fixtures(account_number)
    foreign_cards.map { |c| yield c }
  end

  Customer = Struct.new(:name, :surname, :number, :date, :type)

  def get_fixtures(card_number)
    [
      Customer.new("Akhil", "Mantha", "371449635398431", "02/20", "American Express"),
      Customer.new("Mohini", "Rao", "5555555555554444", "10/21", "MasterCard"),
      Customer.new("Nikhil", "Mantha", "4111111111111111", "14/23", "visa" )
    ]
  end

end

class CreaditCardService

  attr_reader :cards

  def initialize(soap_client)
    @soap_client = soap_client
  end

  def get_card_from_account(account_number)
    begin
      @cards = @soap_client.get_card_data(account_number) do |card|
        CreditCard.new(
          :card_holder => card.name + card.surname,
          :card_number => card.number,
          :expiration_year => card.date.split('/')[1],
          :expirartion_month => card.date.split('/')[0]
        )
      end
    rescue Exception => e
      raise CreaditCardServiceError
    end
  end
end

class CreaditCardServiceError < StandardError; end
