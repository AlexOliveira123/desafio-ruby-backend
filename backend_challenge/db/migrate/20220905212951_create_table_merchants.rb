class CreateTableMerchants < ActiveRecord::Migration[7.0]
  def change
    create_table 'merchants', force: :cascade do |t|
      t.string 'name'
      t.string 'store_name'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
    end
  end
end
