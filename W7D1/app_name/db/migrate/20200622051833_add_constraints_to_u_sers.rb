class AddConstraintsToUSers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :username
    remove_column :users, :password_digest
    remove_column :users, :session_token
  end
end
