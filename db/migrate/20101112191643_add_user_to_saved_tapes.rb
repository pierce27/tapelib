class AddUserToSavedTapes < ActiveRecord::Migration
  def self.up
    add_column :saved_tapes, :user, :string
  end

  def self.down
    remove_column :saved_tapes, :user
  end
end
