require 'json'

class RowCnbaTxtFileToHash
  def self.call(row)
    transaction_type = row[0, 1].to_i
    transaction_date = DateTime.parse("#{row[1, 8].strip}T#{row[42, 6].strip}").strftime('%d/%m/%Y %H:%M:%S')
    amount = row[9, 10].strip.to_f / 100
    document = row[19, 11]
    card_number = row[30, 12]
    merchant_name = row[48, 14].strip
    store_name = row[62, 19].strip

    {
      'transaction' => { transaction_type: transaction_type, transaction_date: transaction_date, amount: amount },
      'card_holder' => { document: document },
      'merchant' => { name: merchant_name, store_name: store_name },
      'credit_card' => { card_number: card_number }
    }
  end
end
