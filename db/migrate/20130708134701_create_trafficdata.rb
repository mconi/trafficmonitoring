class CreateTrafficdata < ActiveRecord::Migration
  def change
    create_table :trafficdata do |t|
      t.integer :switchID
      t.string :ifIndex
      t.string :ifDescr
      t.integer :ifInOctets
      t.integer :ifOutOctets
      t.integer :diffInOctets
      t.integer :diffOutOctets

      t.timestamps
    end
  end
end
