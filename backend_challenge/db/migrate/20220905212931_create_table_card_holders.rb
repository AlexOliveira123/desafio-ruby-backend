class CreateTableCardHolders < ActiveRecord::Migration[7.0]
  def change
    create_table 'card_holders', force: :cascade do |t|
      t.string 'document'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
    end
  end
end
