class Guess < ActiveRecord::Base
  belongs_to :moviequote
  belongs_to :user
  validates :titleguess, presence: true
end
