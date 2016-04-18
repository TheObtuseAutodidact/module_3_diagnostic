class Station
  attr_reader :service

  def service
    @service ||= NrelService.new
  end

  def self.all(zip)
    service.nearest(zip)
  end
end
