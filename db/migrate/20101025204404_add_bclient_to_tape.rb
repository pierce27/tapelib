class AddBclientToTape < ActiveRecord::Migration
  def self.up
    add_column :tapes, :bclient, :text
  end

  def self.down
    remove_column :tapes, :bclient
  end
end
