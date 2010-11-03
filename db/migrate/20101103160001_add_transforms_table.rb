class AddTransformsTable < ActiveRecord::Migration
  def self.up
    create_table :transforms do |table|
      table .column :server, 	:string
      table.column  :server_t, 	:string
      table.column  :bformat, 	:integer
      table.column :bformat_t, 	:string
      table.column :bclient, 	:integer
      table.column :bclient_t, 	:string
      table.column :btype,     	:integer
      table.column :btype_t, 	:string
      table.column :battr,	:integer
      table.column :battr_t,	:string		
   end
  end

  def self.down
  end
end
