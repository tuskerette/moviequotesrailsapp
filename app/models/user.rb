class User < ActiveRecord::Base
  has_many :guesses, dependent: :destroy
  has_many :moviequotes, through: :guesses
  User.order('name')
end
