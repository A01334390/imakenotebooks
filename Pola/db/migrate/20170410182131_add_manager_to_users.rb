class AddManagerToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :manager, :boolean
  end
end
