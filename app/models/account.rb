class Account < ApplicationRecord

    ACCOUNT_NAMES = ['Savings', 'Current']

    validates :name, presence: true, inclusion: { in: ACCOUNT_NAMES }
end
