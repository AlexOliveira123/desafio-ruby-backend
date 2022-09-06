class ImportCnbaFile
  def initialize(file)
    @file_data = File.open(file)
  end

  def save_data
    @file_data.each do |row|
      data = ::RowCnbaTxtFileToHash.call(row)

      card_holder_data = data['card_holder']
      card_holder_result = CardHolder.create(card_holder_data)

      merchant_data = data['merchant']
      merchant_result = Merchant.create(merchant_data)

      credit_card_data = data['credit_card'].merge({ 'card_holder_id': card_holder_result.id })
      credit_card_result = CreditCard.create(credit_card_data)

      transaction_data = data['transaction'].merge(
        { 'card_holder_id': card_holder_result.id,
          'merchant_id': merchant_result.id,
          'credit_card_id': credit_card_result.id,
          'nature': 2 }
      )

      Transaction.create(transaction_data)
    end
  end
end
