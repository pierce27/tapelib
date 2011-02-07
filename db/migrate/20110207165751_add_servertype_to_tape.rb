class AddServertypeToTape < ActiveRecord::Migration
  def self.up
    add_column :tapes, :servertype, :string
  end

  def self.down
    remove_column :tapes, :servertype
  end
end
