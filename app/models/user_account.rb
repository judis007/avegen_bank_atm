class UserAccount < ApplicationRecord
  has_secure_password

  belongs_to :user
  belongs_to :account

  has_many :account_transactions
end
