class AddCheckToTape < ActiveRecord::Migration
  def self.up
    add_column :tapes, :check, :int
  end

  def self.down
    remove_column :tapes, :check
  end
end
