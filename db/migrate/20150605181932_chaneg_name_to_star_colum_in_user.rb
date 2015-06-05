class ChanegNameToStarColumInUser < ActiveRecord::Migration
  def change
    rename_column :users, :stars, :points
  end
end
