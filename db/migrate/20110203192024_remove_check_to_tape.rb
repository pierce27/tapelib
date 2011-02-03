class RemoveCheckToTape < ActiveRecord::Migration
  def self.up
    remove_column :tapes, :check
  end

  def self.down
    add_column :tapes, :check, :int
  end
end
