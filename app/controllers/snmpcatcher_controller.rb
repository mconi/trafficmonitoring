class SnmpcatcherController < ApplicationController
  def create
    device = Device.find(1)
    ifTable_columns = ["ifIndex", "ifDescr", "ifInOctets", "ifOutOctets"]
      SNMP::Manager.open(:Host => #{device.ip} , :Community => #{device.snmpcommunity}) do |manager|
        manager.walk(ifTable_columns) do |index, descr, inoctets, outoctets|
        trafficdata = Trafficdata.create(switchID = #{device.id}, ifIndex='#{index.value}', ifDescr='#{descr.value}', ifInOctets='#{inoctets.value}', ifOutOctets='#{outoctets.value}')
      end
    end
  end
end
