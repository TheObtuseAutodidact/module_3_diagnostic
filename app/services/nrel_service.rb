class NrelService
  attr_reader :connection
  def initialize
    @connection = Faraday.new("https://developer.nrel.gov//api/alt-fuel-stations/v1")
    connection.params["api_key"] = ENV["api_key"]
  end

  def nearest(zip)
    JSON.parse(connection.get("nearest.json?location=#{zip}&distance=6&limit=10&fuel_type=ELEC,LPG").body)
  end
end

# https://developer.nrel.gov//api/alt-fuel-stations/v1/
#       nearest.json?location=80203
#                    &distance=6
#                    &limit=10
#                    &fuel_type=ELEC,LPG
#                    &api_key=YDRJ4IEoeYjFdEHpL5IvsIknMhT6sf3q9Ia1a2tu
#                    &format=JSON
