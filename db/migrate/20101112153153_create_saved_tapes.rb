class CreateSavedTapes < ActiveRecord::Migration
  def self.up
    create_table :saved_tapes do |t|
      t.string :voltag
      t.string :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :saved_tapes
  end
end
