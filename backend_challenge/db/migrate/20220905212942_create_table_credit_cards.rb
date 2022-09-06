class CreateTableCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table 'credit_cards', force: :cascade do |t|
      t.string 'card_number'
      t.integer 'card_holder_id'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
    end
  end
end
