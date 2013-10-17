class AddUsernameAndUsertypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :usertype, :string
  end
end
