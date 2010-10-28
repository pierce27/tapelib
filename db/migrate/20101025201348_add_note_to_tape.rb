class AddNoteToTape < ActiveRecord::Migration
  def self.up
    add_column :tapes, :note, :text
  end

  def self.down
    remove_column :tapes, :note
  end
end
