class CreditCard
  attr_accessor :card_number, :card_holder, :expiration_year, :expirartion_month, :type

  def initialize(args)
    @card_number = args[:card_number]
    @card_holder = args[:card_holder]
    @expiration_year = args[:expiration_year]
    @expirartion_month = args[:expirartion_month]
    @type = args[:type]

    validate_card_number
  end

  private
    def validate_card_number
      CreaditCardValidator::validate(self)
    end

end

class CreaditCardValidator
    def self.validate(credid_card)
      # Validate or raise CreditCardInvalidNumber
    end
end

class CreditCardInvalidNumber < StandardError; end
