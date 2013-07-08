class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :hostname
      t.string :ip
      t.string :snmpcommunity
      t.text :commentar
      t.string :password
      t.string :location

      t.timestamps
    end
  end
end
