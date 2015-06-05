class Moviequote < ActiveRecord::Base

  has_many :guesses, dependent: :destroy

end
