class Station
  attr_reader :service

  def service
    @service ||= NrelService.new
  end

  def self.all
    service.nearest
  end
end
