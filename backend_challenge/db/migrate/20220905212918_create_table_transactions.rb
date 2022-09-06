class CreateTableTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table 'transactions', force: :cascade do |t|
      t.integer 'transaction_type'
      t.string 'nature'
      t.float 'amount'
      t.datetime 'transaction_date'
      t.integer 'card_holder_id'
      t.integer 'merchant_id'
      t.integer 'credit_card_id'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
    end
  end
end
