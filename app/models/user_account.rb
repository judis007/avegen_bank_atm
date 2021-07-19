class UserAccount < ApplicationRecord
  has_secure_password

  belongs_to :user
  belongs_to :account
  has_many :account_transactions

  validates :balance, presence: true, numericality: true
  validates :account_number, presence: true, numericality: true, uniqueness: true
  validates :user_id, presence: true, numericality: true
  validates :account_id, presence: true, numericality: true

  def self.find_by_account_number(account_no)
    find_by(account_number: account_no)
  end

end
