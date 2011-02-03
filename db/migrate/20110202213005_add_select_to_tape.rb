class AddSelectToTape < ActiveRecord::Migration
  def self.up
    add_column :tapes, :select, :boolean
  end

  def self.down
    remove_column :tapes, :select
  end
end
