class Moviequote < ActiveRecord::Base
  has_many :guesses, dependent: :destroy
  # Moviequote.all.shuffle
end
