class AddIndicesAndConstraints < ActiveRecord::Migration[5.2]
  def change
  end
    add_index :users, :username, unique: true
    add_index :users, :session_token, unique: true
end
