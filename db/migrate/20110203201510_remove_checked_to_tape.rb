class RemoveCheckedToTape < ActiveRecord::Migration
  def self.up
    remove_column :tapes, :checked
  end

  def self.down
    add_column :tapes, :checked, :boolean
  end
end
