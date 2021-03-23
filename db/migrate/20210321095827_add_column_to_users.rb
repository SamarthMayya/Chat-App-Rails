class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :active_user, :bool, default: false 
  end
end
