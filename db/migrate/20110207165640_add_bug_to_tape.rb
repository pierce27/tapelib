class AddBugToTape < ActiveRecord::Migration
  def self.up
    add_column :tapes, :bug, :integer
  end

  def self.down
    remove_column :tapes, :bug
  end
end
