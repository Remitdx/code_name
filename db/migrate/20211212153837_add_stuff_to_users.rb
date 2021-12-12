class AddStuffToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pseudo, :string
    add_column :users, :friends, :string
    add_column :users, :game_played, :integer
    add_column :users, :game_won, :integer
  end
end
