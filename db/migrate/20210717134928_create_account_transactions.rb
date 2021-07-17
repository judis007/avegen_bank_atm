class CreateAccountTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :account_transactions do |t|
      t.decimal :amount, default: 0.0
      t.string :transaction_type
      t.references :user_account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
