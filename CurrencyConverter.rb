class CurrencyConverter
    def initialize(exchange_rates)
      @exchange_rates = exchange_rates
    end
  
    def convert(amount, from_currency, to_currency)
      if @exchange_rates.key?([from_currency, to_currency])
        exchange_rate = @exchange_rates[[from_currency, to_currency]]
        result = amount * exchange_rate
        result
      else
        "Conversion from #{from_currency} to #{to_currency} is not supported."
      end
    end
  end
  
  # Example exchange rates (you can replace these with actual rates)
  exchange_rates = {
    ['USD', 'EUR'] => 0.85,
    ['USD', 'GBP'] => 0.75,
    ['EUR', 'USD'] => 1.18,
    ['GBP', 'USD'] => 1.33,
    ['EUR', 'GBP'] => 0.88,
    ['GBP', 'EUR'] => 1.14,
    ['USD', 'INR'] => 74.88,
    ['INR', 'USD'] => 0.0133,
    ['EUR', 'INR'] => 85.08,
    ['INR', 'EUR'] => 0.0118,
    ['GBP', 'INR'] => 93.53,
    ['INR', 'GBP'] => 0.0107
  }
  
  # Create a CurrencyConverter instance
  converter = CurrencyConverter.new(exchange_rates)
  
  # Get user input
  print 'Enter the amount to convert: '
  amount_to_convert = gets.chomp.to_f
  print 'Enter the source currency : '
  from_currency = gets.chomp.upcase
  print 'Enter the target currency : '
  to_currency = gets.chomp.upcase
  
  # Perform the conversion
  result = converter.convert(amount_to_convert, from_currency, to_currency)
  
  # Display the result
  puts "#{amount_to_convert} #{from_currency} is equal to #{result.round(2)} #{to_currency}"