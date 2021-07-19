class User < ApplicationRecord
    has_many :user_accounts

    validates_presence_of :first_name, :last_name
    validates :age, numericality: true
end
