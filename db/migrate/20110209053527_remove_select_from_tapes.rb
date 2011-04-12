class RemoveSelectFromTapes < ActiveRecord::Migration
  def self.up
    remove_column :tapes, :select
  end

  def self.down
    add_column :tapes, :select, :tape
  end
end
