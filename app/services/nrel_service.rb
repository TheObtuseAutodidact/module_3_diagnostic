class NrelService
  attr_reader :connection
  def initialize
    @connection = Faraday.new("https://developer.nrel.gov//api/alt-fuel-stations/v1")
    connection.params["api_key"] = ENV["api_key"]
  end

  def nearest(zip)
    connection.get("/nearest.json?location=#{zip}&distance=6&limit=10&fuel_type=ELEC,LPG")
  end
end
