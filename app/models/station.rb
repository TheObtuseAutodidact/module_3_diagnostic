class Station

  def service
    @service ||= NrelService.new
  end

  def self.all
    @service.fuel_stations
  end
end
