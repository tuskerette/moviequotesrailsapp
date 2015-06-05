class CreateMoviequotes < ActiveRecord::Migration
  def change
    create_table :moviequotes do |t|
      t.string :quote
      t.string :title

      t.timestamps null: false
    end
  end
end
