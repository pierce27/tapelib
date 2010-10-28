class AddTestcaseToTape < ActiveRecord::Migration
  def self.up
    add_column :tapes, :testcase, :integer
  end

  def self.down
    remove_column :tapes, :testcase
  end
end
