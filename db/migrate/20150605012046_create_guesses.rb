class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string :titleguess
      t.references :moviequote, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
