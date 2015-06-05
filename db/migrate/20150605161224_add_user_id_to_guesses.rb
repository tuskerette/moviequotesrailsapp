class AddUserIdToGuesses < ActiveRecord::Migration
  def change
    add_reference :guesses, :user, index: true, foreign_key: true
  end
end
