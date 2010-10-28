class CreateTapes < ActiveRecord::Migration
  def self.up
    create_table :tapes do |t|
      t.string :bsid
      t.string :server
      t.integer :backupstamp
      t.string :bformat
      t.string :btype
      t.string :broot
      t.string :tapelabel
      t.string :voltag
      t.integer :size
      t.string :rev

      t.timestamps
    end
  end

  def self.down
    drop_table :tapes
  end
end
