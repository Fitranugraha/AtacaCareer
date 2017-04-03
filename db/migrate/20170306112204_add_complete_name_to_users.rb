class AddCompleteNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :complete_name, :string
  end
end
