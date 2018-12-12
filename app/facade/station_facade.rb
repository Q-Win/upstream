class StationFacade

  def initialize(zip)
    @zip = zip
    @_stations = nil
  end

  def stations_by_zip
    # binding.pry
    stations_results_by_zip(@zip)[:fuel_stations].map do |station_data|
      Station.new(station_data)
    end

  end


  private

  def stations_results_by_zip(zip)
    @_stations ||= service.get_stations_by_zip(@zip)
  end

  def service
    SearchService.new
  end


end
