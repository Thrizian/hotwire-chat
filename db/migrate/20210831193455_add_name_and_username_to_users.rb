class AddNameAndUsernameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :username, :string, null: false, uniqueness: true
  end
end
