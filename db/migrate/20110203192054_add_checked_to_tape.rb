class AddCheckedToTape < ActiveRecord::Migration
  def self.up
    add_column :tapes, :checked, :boolean
  end

  def self.down
    remove_column :tapes, :checked
  end
end
