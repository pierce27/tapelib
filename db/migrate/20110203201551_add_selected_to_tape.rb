class AddSelectedToTape < ActiveRecord::Migration
  def self.up
    add_column :tapes, :selected, :boolean
  end

  def self.down
    remove_column :tapes, :selected
  end
end
