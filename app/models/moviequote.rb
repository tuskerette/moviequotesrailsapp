class Moviequote < ActiveRecord::Base
  has_many :guesses, dependent: :destroy
  validates :title, presence: true
  validates :quote, presence: true
end
