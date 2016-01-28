class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside of this method, is translated to SQL code and modified to the database(currently, SQLite)
    add_column :users,:username,:string #ADD A NEW COLUMN to table "users called "username" and of type "string"
    add_index :users, :username, unique: true #first , index usernames for quick (rapid) lookup Second, ensqure usernames are ALWAYS unique
  end
end
