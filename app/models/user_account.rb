class UserAccount < ApplicationRecord
  has_secure_password

  belongs_to :user
  belongs_to :account
  has_many :account_transactions

  def self.find_by_account_number(account_no)
    find_by(account_number: account_no)
  end

end
