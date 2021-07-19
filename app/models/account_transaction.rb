class AccountTransaction < ApplicationRecord
    belongs_to :user_account

    validates :amount, numericality: true
    validates_presence_of :transaction_type
    validates :user_account_id, presence: true, numericality: true
end
